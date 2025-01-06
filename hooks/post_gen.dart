import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final directory = Directory.current.path;
  final vars = context.vars;
  final projectName = vars['project_name'];
  final flutterVersion = vars['flutter_version'];
  final sdkVersion = vars['sdk_version'];
  final swaggerUrl = vars['swagger_url'];
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
    // 'init': "$root/scripts/init.sh",
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

    // Run other CLI commands

    final swagger = await Process.run(
      'sh',
      ['-c', 'swaggen generate --url="$swaggerUrl"'],
      runInShell: true,
      workingDirectory: root,
      environment: {
        'FLUTTER_VERSION': flutterVersion,
        'PROJECT_NAME': projectName,
      },
    );
    if (swagger.exitCode != 0) {
      context.logger.err('Failed to run swagger script.');
      context.logger.err('swagger stderr: ${swagger.stderr}');
      progress.fail();
      return;
    } else {
      context.logger.info('swagger stdout: ${swagger.stdout}');
    }
  } catch (e) {
    context.logger.err('Error running scripts: $e');
    progress.fail();
    return;
  }

  progress.complete();
}
