import 'package:equatable/equatable.dart';
import 'package:very_good_core_hooks/very_good_core_hooks.dart';

/// The variables specified by this hook.
///
/// The variables can be found in the Brick's `brick.yaml` file. They are
/// initially included in the `HookContext.vars` map.
///
/// See also:
///
/// * [brick.yaml documentation](https://docs.brickhub.dev/brick-structure#brickyaml)
enum _VeryGoodCoreConfigurationVariables {
  /// {@template very_good_core_configuration_variables.project_name}
  /// The project name.
  ///
  /// Defaults to `my_app`.
  /// {@endtemplate}
  projectName._('project_name'),

  /// {@template very_good_core_configuration_variables.organization_name}
  /// The organization name.
  ///
  /// Defaults to `com.example`.
  /// {@endtemplate}
  organizationName._('org_name'),

  /// {@template very_good_core_configuration_variables.application_id}
  /// The application id on Android, Bundle ID on iOS and company name on
  /// Windows. If omitted value will be formed by org_name + . + project_name.
  ///
  /// Has no default specified within the `brick.yaml`.
  /// {@endtemplate}
  applicationId._('application_id'),

  /// {@template very_good_core_configuration_variables.description}
  /// A short project description.
  ///
  /// Defaults to `A Very Good App`.
  /// {@endtemplate}
  description._('description'),

  /// {@template very_good_core_configuration_variables.flutter_version}
  /// The version of Flutter to use.
  ///
  /// Defaults to `3.27.0`.
  /// {@endtemplate}
  flutterVersion._('flutter_version'),

  /// {@template very_good_core_configuration_variables.sdk_version}
  /// The version of the Dart SDK to use.
  ///
  /// Defaults to `^3.6.0`.
  /// {@endtemplate}
  sdkVersion._('sdk_version'),

  /// {@template very_good_core_configuration_variables.graphql}
  /// Whether to generate a GraphQL configuration.
  ///
  /// Defaults to `false`.
  /// {@endtemplate}
  graphql._('graphql'),

  /// {@template very_good_core_configuration_variables.endpoint_prod}
  /// The production endpoint.
  ///
  /// Defaults to `https://api.example.com`.
  /// {@endtemplate}
  endpointProd._('endpoint_prod'),

  /// {@template very_good_core_configuration_variables.endpoint_stg}
  /// The staging endpoint.
  ///
  /// Defaults to `https://api.staging.example.com`.
  /// {@endtemplate}
  endpointStg._('endpoint_stg'),

  /// {@template very_good_core_configuration_variables.endpoint_dev}
  /// The development endpoint.
  ///
  /// Defaults to `https://api.dev.example.com`.
  /// {@endtemplate}
  endpointDev._('endpoint_dev'),

  /// {@template very_good_core_configuration_variables.swagger_url}
  /// The URL to the Swagger file.
  ///
  /// {@endtemplate}
  swaggerUrl._('swagger_url');

  const _VeryGoodCoreConfigurationVariables._(this.key);

  /// The key used in the `HookContext.vars` [Map].
  ///
  /// This should match the variable key in the `brick.yaml`.
  final String key;
}

/// {@template very_good_core_configuration}
/// Configuration for the `very_good_core` brick.
/// {@endtemplate}
class VeryGoodCoreConfiguration extends Equatable {
  /// {@macro very_good_core_configuration}
  VeryGoodCoreConfiguration({
    String? projectName,
    String? flutterVersion,
    String? organizationName,
    String? description,
    String? sdkVersion,
    bool? graphql,
    String? endpointProd,
    String? endpointStg,
    String? endpointDev,
    String? swaggerUrl,
    WindowsApplicationId? windowsApplicationId,
    AppleApplicationId? iOsApplicationId,
    AppleApplicationId? macOsApplicationId,
    AndroidApplicationId? androidApplicationId,
    AndroidNamespace? androidNamespace,
  })  : projectName = projectName ?? 'my_app',
        organizationName = organizationName ?? 'com.example',
        flutterVersion = flutterVersion ?? '3.27.0',
        sdkVersion = sdkVersion ?? '^3.6.0',
        graphql = graphql ?? false,
        endpointProd = endpointProd ?? 'https://api.example.com',
        endpointStg = endpointStg ?? 'https://staging.api.example.com',
        endpointDev = endpointDev ?? 'https://dev.api.example.com',
        swaggerUrl = swaggerUrl,
        description = description ?? 'A Very Good App' {
    this.windowsApplicationId = windowsApplicationId ??
        WindowsApplicationId.fallback(
          organizationName: this.organizationName,
          projectName: this.projectName,
        );
    this.iOsApplicationId = iOsApplicationId ??
        AppleApplicationId.fallback(
          organizationName: this.organizationName,
          projectName: this.projectName,
        );
    this.macOsApplicationId = macOsApplicationId ??
        AppleApplicationId.fallback(
          organizationName: this.organizationName,
          projectName: this.projectName,
        );
    this.androidApplicationId = androidApplicationId ??
        AndroidApplicationId.fallback(
          organizationName: this.organizationName,
          projectName: this.projectName,
        );
    if (!this.androidApplicationId.isValid) {
      throw InvalidAndroidApplicationIdFormat(this.androidApplicationId);
    }

    this.androidNamespace = androidNamespace ??
        AndroidNamespace.fromApplicationId(this.androidApplicationId);
  }

  /// Deserializes a [VeryGoodCoreConfiguration] from a `Map<String, dynamic>`
  /// used to represent the configuration in the `HookContext.vars` map.
  factory VeryGoodCoreConfiguration.fromHookVars(Map<String, dynamic> vars) {
    final projectName =
        vars[_VeryGoodCoreConfigurationVariables.projectName.key];
    if (projectName is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.projectName.key}" to be of type String?, got $projectName.''',
      );
    }

    final organizationName =
        vars[_VeryGoodCoreConfigurationVariables.organizationName.key];
    if (organizationName is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.organizationName.key}" to be of type String?, got $organizationName.''',
      );
    }

    final applicationId =
        vars[_VeryGoodCoreConfigurationVariables.applicationId.key];
    if (applicationId is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.applicationId.key}" to be of type String?, got $applicationId.''',
      );
    }

    final description =
        vars[_VeryGoodCoreConfigurationVariables.description.key];
    if (description is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.description.key}" to be of type String?, got $description.''',
      );
    }

    final flutterVersion =
        vars[_VeryGoodCoreConfigurationVariables.flutterVersion.key];
    if (flutterVersion is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.flutterVersion.key}" to be of type String?, got $flutterVersion.''',
      );
    }

    final sdkVersion = vars[_VeryGoodCoreConfigurationVariables.sdkVersion.key];
    if (sdkVersion is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.sdkVersion.key}" to be of type String?, got $sdkVersion.''',
      );
    }

    final graphql = vars[_VeryGoodCoreConfigurationVariables.graphql.key];
    if (graphql is! bool) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.graphql.key}" to be of type bool, got $graphql.''',
      );
    }

    final endpointProd =
        vars[_VeryGoodCoreConfigurationVariables.endpointProd.key];
    if (endpointProd is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.endpointProd.key}" to be of type String?, got $endpointProd.''',
      );
    }

    final endpointDev =
        vars[_VeryGoodCoreConfigurationVariables.endpointDev.key];
    if (endpointDev is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.endpointDev.key}" to be of type String?, got $endpointDev.''',
      );
    }

    final endpointStg =
        vars[_VeryGoodCoreConfigurationVariables.endpointStg.key];
    if (endpointStg is! String?) {
      throw ArgumentError.value(
        vars,
        'vars',
        '''Expected a value for key "${_VeryGoodCoreConfigurationVariables.endpointStg.key}" to be of type String?, got $endpointStg.''',
      );
    }

    final swaggerUrl = vars[_VeryGoodCoreConfigurationVariables.swaggerUrl.key];

    return VeryGoodCoreConfiguration(
      projectName: projectName,
      organizationName: organizationName,
      flutterVersion: flutterVersion,
      sdkVersion: sdkVersion,
      graphql: graphql,
      swaggerUrl: swaggerUrl,
      endpointProd: endpointProd,
      endpointDev: endpointProd,
      endpointStg: endpointStg,
      iOsApplicationId: applicationId == null || applicationId.isEmpty
          ? null
          : AppleApplicationId(applicationId),
      macOsApplicationId: applicationId == null || applicationId.isEmpty
          ? null
          : AppleApplicationId(applicationId),
      windowsApplicationId: applicationId == null || applicationId.isEmpty
          ? null
          : WindowsApplicationId(applicationId),
      androidApplicationId: applicationId == null || applicationId.isEmpty
          ? null
          : AndroidApplicationId(applicationId),
      description: description,
    );
  }

  /// {@macro very_good_core_configuration_variables.project_name}
  final String projectName;

  /// {@macro very_good_core_configuration_variables.flutter_version}
  final String flutterVersion;

  /// {@macro very_good_core_configuration_variables.organization_name}
  final String organizationName;

  /// {@macro very_good_core_configuration_variables.sdk_version}
  final String sdkVersion;

  /// {@macro very_good_core_configuration_variables.graphql}
  final bool graphql;

  /// {@macro very_good_core_configuration_variables.endpoint_prod}
  final String endpointProd;

  /// {@macro very_good_core_configuration_variables.endpoint_dev}
  final String endpointDev;

  /// {@macro very_good_core_configuration_variables.endpoint_stg}
  final String endpointStg;

  /// {@macro very_good_core_configuration_variables.description}
  final String description;

  /// {@macro very_good_core_configuration_variables.swagger_url}
  final String? swaggerUrl;

  /// {@macro windows_application_id}
  late final WindowsApplicationId windowsApplicationId;

  /// {@macro apple_application_id}
  late final AppleApplicationId iOsApplicationId;

  /// {@macro apple_application_id}
  late final AppleApplicationId macOsApplicationId;

  /// {@macro android_namespace}
  late final AndroidNamespace androidNamespace;

  /// {@macro android_application_id}
  late final AndroidApplicationId androidApplicationId;

  @override
  List<Object?> get props => [
        projectName,
        sdkVersion,
        swaggerUrl,
        graphql,
        endpointProd,
        endpointDev,
        endpointStg,
        flutterVersion,
        organizationName,
        description,
        windowsApplicationId,
        iOsApplicationId,
        macOsApplicationId,
        androidNamespace,
        androidApplicationId,
      ];
}
