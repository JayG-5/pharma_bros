import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'per_daily_intake_ingredient_content.freezed.dart';
part 'per_daily_intake_ingredient_content.g.dart';

@freezed
class PerDailyIntakeIngredientContent with _$PerDailyIntakeIngredientContent {
  const factory PerDailyIntakeIngredientContent({
    required String ingredientName,
    required String content,
  }) = _PerDailyIntakeIngredientContent;

  factory PerDailyIntakeIngredientContent.fromJson(Map<String, Object?> json)
  => _$PerDailyIntakeIngredientContentFromJson(json);
}