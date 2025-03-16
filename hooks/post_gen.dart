import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final directory = Directory.current.path;
  final vars = context.vars;
  final projectName = vars['project_name'];
  final flutterVersion = vars['flutter_version'];
  final sdkVersion = vars['sdk_version'];
  final String? swaggerUrl = vars['swagger_url'];
  final root = "$directory/$projectName";

  context.logger.info('Directory: $directory');
  context.logger.info('Project Name: $projectName');
  context.logger.info('Flutter Version: $flutterVersion');
  context.logger.info('SDK Version: $sdkVersion');
  context.logger.info('Root: $root');
  context.logger.info('Vars: $vars');

  final progress = context.logger.progress(
    'Running init.sh... for $projectName at $root',
  );

  final scriptPaths = {
    'init': "$root/scripts/init.sh",
    'ui_init': "$root/packages/${projectName}_ui/scripts/init.sh",
    'gen_l10n': "$root/packages/internationalization/scripts/gen_l10n.sh",
    'clean': "$root/scripts/clean.sh",
    'fetch': "$root/scripts/fetch.sh",
    'gen_code': "$root/scripts/gen_code.sh",
  };

  context.logger.info('Found ${scriptPaths.length} scripts to run.');

  try {
    // Set execute permissions for all .sh scripts in the project directory
    final result = await Process.run(
      'find',
      [root, '-name', '*.sh', '-exec', 'chmod', '+x', '{}', ';'],
      runInShell: true,
      environment: {
        'FLUTTER_VERSION': flutterVersion,
        'PROJECT_NAME': projectName,
      },
    );

    context.logger.info('Check Permissions: ${result.stdout}');

    if (result.exitCode != 0) {
      context.logger
          .err('Failed to set execute permissions for shell scripts.');
      context.logger.err('chmod stderr: ${result.stderr}');
      progress.fail();
      return;
    } else {
      context.logger.info('Set execute permissions for all shell scripts.');
    }

    context.logger.info('Running scripts one by one...');

    // Run scripts
    for (final entry in scriptPaths.entries) {
      final scriptName = entry.key;
      final scriptPath = entry.value;

      final arguments = <String>[];
      if (scriptName == 'gen_code') {
        arguments.add('rewrite');
      }

      if (File(scriptPath).existsSync()) {
        final runResult = await Process.run(
          scriptPath,
          arguments,
          runInShell: true,
          workingDirectory: root,
          environment: {
            'FLUTTER_VERSION': flutterVersion,
            'PROJECT_NAME': projectName,
          },
        );

        if (runResult.exitCode != 0) {
          context.logger.err('Failed to run $scriptName script.');
          context.logger.err('$scriptName stderr: ${runResult.stderr}');
          progress.fail();
          return;
        } else {
          context.logger.info('$scriptName stdout: ${runResult.stdout}');
        }
      } else {
        context.logger.warn('Script $scriptPath does not exist.');
      }
    }

    // Run swagger generation if URL is provided
    if (swaggerUrl != null && swaggerUrl.isNotEmpty) {
      // Create the run_swaggen.sh script if it doesn't exist
      final swaggenScriptPath = "$root/scripts/run_swaggen.sh";
      if (!File(swaggenScriptPath).existsSync()) {
        final swaggenScript = '''
          #!/bin/bash
          # Explicitly set up the environment for swaggen
          
          # Source shell profile
          if [ -f "\$HOME/.zshrc" ]; then
            source "\$HOME/.zshrc"
          elif [ -f "\$HOME/.bashrc" ]; then
            source "\$HOME/.bashrc"
          fi
          
          # Set up pyenv if needed
          if command -v pyenv > /dev/null; then
            export PATH="\$HOME/.pyenv/bin:\$PATH"
            eval "\$(pyenv init -)"
            eval "\$(pyenv virtualenv-init -)"
          fi
          
          # Run swaggen with all arguments passed to this script
          swaggen "\$@"
          ''';
        File(swaggenScriptPath).writeAsStringSync(swaggenScript);
        await Process.run('chmod', ['+x', swaggenScriptPath]);
        context.logger.info('Created run_swaggen.sh script');
      }

      final swagger = await Process.run(
        './scripts/run_swaggen.sh',
        ['generate', '--url="$swaggerUrl"'],
        runInShell: true,
        workingDirectory: root,
      );

      if (swagger.exitCode != 0) {
        context.logger.err('Failed to run swagger script.');
        context.logger.err('swagger stderr: ${swagger.stderr}');
        progress.fail();
        return;
      } else {
        context.logger.info('swagger stdout: ${swagger.stdout}');
    
        // Now run the gen_code.sh rewrite script
        final genCode = await Process.run(
          './scripts/gen_code.sh',
          ['rewrite'],
          runInShell: true,
          workingDirectory: root,
        );
        
        if (genCode.exitCode != 0) {
          context.logger.err('Failed to run gen_code.sh rewrite script.');
          context.logger.err('gen_code stderr: ${genCode.stderr}');
          context.logger.warn('Swagger generation succeeded but code generation failed.');
        } else {
          context.logger.info('gen_code stdout: ${genCode.stdout}');
          context.logger.success('Code generation completed successfully.');
        }
      }
    }
  } catch (e) {
    context.logger.err('Error running scripts: $e');
    progress.fail();
    return;
  }

  progress.complete();
}