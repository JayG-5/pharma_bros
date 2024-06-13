import 'package:dio/dio.dart';
import 'package:pharmabros/models/product_detail.dart';

class ProductAPI {
  final Dio _dio;

  ProductAPI(this._dio);

  Future getDetail(int productId) async {
    try {
      final Response response = await _dio
          .get('product/detail', queryParameters: {'product_id': productId});
      return ProductDetail.fromJson(response.data['data']);
    } on DioException catch (e) {
      return e.response;
    }
  }
}
