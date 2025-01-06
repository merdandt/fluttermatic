import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

enum PaginationStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    required final bool hasReachedMax,
    required final PaginationStatus paginationStatus,
    required final int currentPage,
  }) = _PaginationModel;

  factory PaginationModel.initial() => const PaginationModel(
        hasReachedMax: false,
        paginationStatus: PaginationStatus.initial,
        currentPage: 1,
      );

  factory PaginationModel.fromJson(final Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
