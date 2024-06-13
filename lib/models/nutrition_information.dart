import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'nutrition_information.freezed.dart';
part 'nutrition_information.g.dart';

@freezed
class NutritionInformation with _$NutritionInformation {
  const factory NutritionInformation({
    required String nutritionName,
    required String description,
  }) = _NutritionInformation;

  factory NutritionInformation.fromJson(Map<String, Object?> json)
  => _$NutritionInformationFromJson(json);
}