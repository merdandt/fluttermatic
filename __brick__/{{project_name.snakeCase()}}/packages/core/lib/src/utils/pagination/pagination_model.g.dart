// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationModelImpl _$$PaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationModelImpl(
      hasReachedMax: json['hasReachedMax'] as bool,
      paginationStatus:
          $enumDecode(_$PaginationStatusEnumMap, json['paginationStatus']),
      currentPage: (json['currentPage'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationModelImplToJson(
        _$PaginationModelImpl instance) =>
    <String, dynamic>{
      'hasReachedMax': instance.hasReachedMax,
      'paginationStatus': _$PaginationStatusEnumMap[instance.paginationStatus]!,
      'currentPage': instance.currentPage,
    };

const _$PaginationStatusEnumMap = {
  PaginationStatus.initial: 'initial',
  PaginationStatus.loading: 'loading',
  PaginationStatus.success: 'success',
  PaginationStatus.failure: 'failure',
};
