import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pharmabros/models/intake_method.dart';
import 'package:pharmabros/models/nutrition_information.dart';
import 'package:pharmabros/models/per_daily_intake_ingredient_content.dart';

part 'product_detail.freezed.dart';
part 'product_detail.g.dart';

@freezed
class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    required int id,
    required String productImageUrl,
    required String productBrandName,
    required String productName,
    required bool isDomestic,
    required bool isShowRecommendType,
    required String recommendTypeName,
    required String recommendTypeNameColor,
    required String recommendContent,
    required bool isShowPurchaseSection,
    required bool isSoldOut,
    required bool isPurchaseAvailable,
    required String originProductPrice,
    required int discountProductPercent,
    required String discountProductPrice,
    required String productSalesUrl,
    required String perDailyIntakeCountText,
    required String perTimesIntakeAmountText,
    required List<IntakeMethod> intakeMethod,
    required List<PerDailyIntakeIngredientContent> perDailyIntakeIngredientContent,
    required String ingredientsContent,
    required List<NutritionInformation> nutritionInformation,
    required List<String> productFeatures,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, Object?> json)
  => _$ProductDetailFromJson(json);
}