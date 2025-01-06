import 'dart:convert';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';

@visibleForTesting
const tokenKey = '__on_device_token_key__';

@visibleForTesting
const refreshTokenKey = '__on_device_refresh_token_key__';

@visibleForTesting
const jwtTokenModelKey = '__on_device_jwt_class_key__';

/// {@template on_device_token_storage}
/// Description
/// {@endtemplate}
/// {@macro on_device_token_storage}
class SecureTokenSorage extends TokenStorage {
  /// {@macro on_device_token_storage}
  SecureTokenSorage({
    required final Storage storage,
  }) : _storage = storage;

  final Storage _storage;

  @override
  Future<void> clearToken() async {
    await _storage.write(key: tokenKey, value: '');
    await _storage.write(key: refreshTokenKey, value: '');
    await _storage.write(key: jwtTokenModelKey, value: '');
  }

  @override
  Future<String?> getToken() async {
    try {
      final token = await _storage.read(key: tokenKey);
      'Bearer $token'.log();

      return token;
    } on SecureStorageException {
      return null;
    }
  }

  @override
  Future<void> saveToken(final String token) async =>
      _storage.write(key: tokenKey, value: token);

  @override
  Future<String?> getRefreshToken() async {
    try {
      final token = await _storage.read(key: refreshTokenKey);

      return token;
    } on SecureStorageException {
      return null;
    }
  }

  @override
  Future<void> saveRefreshToken(final String token) async =>
      _storage.write(key: refreshTokenKey, value: token);

  @override
  Future<JwtToken?> getJwtToken() async {
    try {
      final jwtStr = await _storage.read(key: jwtTokenModelKey);
      if (jwtStr == null || jwtStr.isEmpty) return null;
      final jwtMap = jsonDecode(jwtStr);
      final jwt = JwtToken.fromJson(jwtMap);

      return jwt;
    } on SecureStorageException {
      return null;
    }
  }

  @override
  Future<void> saveJwtToken(final JwtToken jwtToken) async {
    final jwtStr = jsonEncode(jwtToken.toJson());
    await saveToken(jwtToken.token);
    await saveRefreshToken(jwtToken.refreshToken);

    return _storage.write(key: jwtTokenModelKey, value: jwtStr);
  }
}
