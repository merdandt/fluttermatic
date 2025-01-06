import 'package:core/core.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/foundation.dart';
import 'package:gql_http_link/gql_http_link.dart';

class FerryClient {
  FerryClient({
    required this.onUnauthorized,
    required this.tokenStorage,
    required this.endpoint,
  });
  late Client client;
  final TokenStorage tokenStorage;
  final String endpoint;
  final VoidCallback onUnauthorized;

  Future<void> initialize() async {
    //final cacheDir = await _getCacheDir();
    //Hive.init(cacheDir.path);
    _initializeClient();
  }

  void _initializeClient() {
    final link = HttpLink(endpoint);

    client = Client(
      link: Link.concat(
        AddAuthHeaderLink(tokenStorage.getToken),
        link,
      ),
      //cache: Cache(store: HiveStore(await _openCacheBox())),
    );
  }

  Future<void> saveToken({required final String token}) async {
    await tokenStorage.saveToken(token);
    _initializeClient();
  }

  Future<void> clearToken() async {
    await tokenStorage.clearToken();
    _initializeClient();
  }

  Future<void> dispose() async {
    await client.dispose();
  }

  Future<OperationResponse<TData, TVars>> performMutation<TData, TVars>(
    final OperationRequest<TData, TVars> operationRequest,
  ) async {
    // Assuming client is an instance of your GraphQL client
    final response = await client.request<TData, TVars>(operationRequest).first;
    if (response.hasErrors) {
      final graphqlErrors =
          response.graphqlErrors?.map(ParsedGraphqlError.fromGraphQLError);

      if (graphqlErrors?.first.isUnauthenticated ?? false) {
        await clearToken();
        onUnauthorized();
        throw UnauthorizedException(message: 'Unauthenticated.');
      }
      throw InternetConnectionException(
        message: graphqlErrors?.first.message ?? '',
      );
    }

    return response;
  }

  Future<OperationResponse<TData, TVars>> performQuery<TData, TVars>(
    final OperationRequest<TData, TVars> operationRequest,
  ) async {
    final response = await client.request<TData, TVars>(operationRequest).first;
    if (response.hasErrors) {
      final graphqlErrors =
          response.graphqlErrors?.map(ParsedGraphqlError.fromGraphQLError);

      if (graphqlErrors?.first.isUnauthenticated ?? false) {
        await clearToken();
        onUnauthorized();
        throw UnauthorizedException(message: 'Unauthenticated.');
      }

      throw InternetConnectionException(
        message: graphqlErrors?.first.message ?? '',
      );
    }

    return response;
  }

  Map<String, dynamic> decodeResponse({
    required final Map<String, dynamic> responseMap,
    required final String key,
  }) {
    final rez = responseMap[key];
    if (rez == null) {
      throw const NullException();
    }

    return rez;
  }

  List<Map<String, dynamic>> decodeListResponse({
    required final Map<String, dynamic> responseMap,
    required final String key,
  }) {
    final List<dynamic> listData = responseMap[key];

    return listData
        .map(
          (final e) => e as Map<String, dynamic>,
        )
        .toList();
  }

  // Future<Directory> _getCacheDir() async {
  //   try {
  //     return await getApplicationDocumentsDirectory();
  //   } on Exception {
  //     return getTemporaryDirectory();
  //   }
  // }

  // Future<Box<dynamic>> _openCacheBox() async {
  //   const boxName = 'ferry';
  //   try {
  //     return await Hive.openBox(boxName);
  //   } on Exception catch (e, s) {
  //     '- - - - - - Exception: $e\nStack Trace: $s'.log();
  //     await Hive.deleteBoxFromDisk(boxName);

  //     return Hive.openBox(boxName);
  //   }
  // }
}
