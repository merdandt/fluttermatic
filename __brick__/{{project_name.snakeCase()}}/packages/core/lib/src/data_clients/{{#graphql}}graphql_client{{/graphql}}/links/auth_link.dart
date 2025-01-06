import 'package:ferry/ferry.dart';
import 'package:flutter/foundation.dart';

import 'package:gql_exec/gql_exec.dart' as gql_exec;

/// A [Link] which adds an authorization header to requests
class AddAuthHeaderLink extends Link {
  AddAuthHeaderLink(this.getToken);

  final AsyncValueGetter<String?> getToken;

  @override
  Stream<gql_exec.Response> request(
    final gql_exec.Request request, [
    final NextLink? forward,
  ]) async* {
    assert(forward != null, 'A forward link must be provided');
    final token = await getToken();
    if (token != null && token.isNotEmpty) {
      final newReq = gql_exec.Request(
        operation: request.operation,
        variables: request.variables,
        context: request.context.updateEntry<gql_exec.HttpLinkHeaders>(
          (final headers) => gql_exec.HttpLinkHeaders(
            headers: {
              ...?headers?.headers,
              'Authorization': 'Bearer $token',
            },
          ),
        ),
      );
      yield* forward!(newReq);
    } else {
      yield* forward!(request);
    }
  }
}
