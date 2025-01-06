import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_result.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResult<T> {
  const ApiResult({
    required this.data,
  });

  factory ApiResult.fromJson(
    final Map<String, dynamic> json,
    final T Function(Object?) fromJsonT,
  ) =>
      _$ApiResultFromJson(json, fromJsonT);

  final T data;

  Map<String, dynamic> toJson(final Object? Function(T) toJsonT) =>
      _$ApiResultToJson(this, toJsonT);

  @override
  String toString() => mapBuffer('ApiResult{data: $data, }');
}
