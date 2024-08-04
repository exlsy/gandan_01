import 'package:freezed_annotation/freezed_annotation.dart';

part 'fasting_model.freezed.dart';

@freezed
class FastingModel with _$FastingModel {
  const FastingModel._();

  factory FastingModel({
    required int id,
    required DateTime start,
    required DateTime end,
    DateTime? stop,
    required String status,
    String? comment,
    required DateTime createdAt,
  }) = _FastingModel;
}
