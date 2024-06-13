import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pharmabros/models/product.dart';

part 'search_info.freezed.dart';

part 'search_info.g.dart';

@freezed
class SearchInfo with _$SearchInfo {
  const factory SearchInfo({
    required String targetWord,
    required int page,
    required List<Product> productList,
    required int totalCount,
  }) = _SearchInfo;

  factory SearchInfo.fromJson(Map<String, Object?> json) =>
      _$SearchInfoFromJson(json);
}
