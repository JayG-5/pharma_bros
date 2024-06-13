import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String brandName,
    required String name,
    required String imageUrl,
    required bool isPurchaseAvailable,
    required bool isSoldOut,
    required int discountProductPercent,
    required String buyShopLink,
    required bool isDomestic,
    required String pickType,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json)
  => _$ProductFromJson(json);
}