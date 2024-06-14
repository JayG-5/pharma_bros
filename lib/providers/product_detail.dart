import 'package:pharmabros/models/product.dart';
import 'package:pharmabros/models/product_detail.dart';
import 'package:pharmabros/services/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail.g.dart';

@riverpod
class ProductDetailNotifier extends _$ProductDetailNotifier {
  @override
  Future<ProductDetail> build(int productId) async {
    return await API.product.getDetail(productId);
  }
}