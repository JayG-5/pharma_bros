// ignore_for_file: non_constant_identifier_names


import 'package:dio/dio.dart';
import 'package:pharmabros/services/api/product.dart';
import 'package:pharmabros/services/api/search.dart';

class API{
  static String BASE_URL = 'https://api.friendly-pharmacist.com/';


  static final Dio _dio = Dio(BaseOptions(
      baseUrl: BASE_URL
  ));

  static Dio get dio {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },onResponse: (response, handler) {
      return handler.next(response);
    },
      onError: (e, handler) {
        return handler.next(e);
      },
    ));
    return _dio;
  }

  static final ProductAPI product = ProductAPI(API.dio);
  static final SearchAPI search = SearchAPI(API.dio);
}
