// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchInfoImpl _$$SearchInfoImplFromJson(Map<String, dynamic> json) =>
    _$SearchInfoImpl(
      targetWord: json['target_word'] as String,
      page: (json['page'] as num).toInt(),
      productList: (json['product_list'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchInfoImplToJson(_$SearchInfoImpl instance) =>
    <String, dynamic>{
      'product_list': instance.productList,
      'totalCount': instance.totalCount,
    };
