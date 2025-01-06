import 'package:core/core.dart';

/// {@template token_storage}
/// Description
/// {@endtemplate}
/// {@macro token_storage}
abstract class TokenStorage {
  /// Returns the current token.
  Future<String?> getToken();

  /// Returns refresh token.
  Future<String?> getRefreshToken();

  /// Saves the current token.
  Future<void> saveToken(final String token);

  /// Saves refresh token.
  Future<void> saveRefreshToken(final String token);

  /// Clears the current token.
  Future<void> clearToken();

  /// Save [JwtToken] model
  Future<void> saveJwtToken(final JwtToken jwtToken);

  /// Get [JwtToken] model
  /// Returns `null` if model is not saved
  Future<JwtToken?> getJwtToken();
}
