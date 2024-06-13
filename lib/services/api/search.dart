import 'package:dio/dio.dart';
import 'package:pharmabros/models/search_info.dart';

class SearchAPI {
  final Dio _dio;

  SearchAPI(this._dio);

  Future product(String targetWord, int page) async {
    try {
      final Response response = await _dio.get('search/product',
          queryParameters: {
            'target_word': targetWord,
            'page': page,
            'size': 10
          });
      return SearchInfo.fromJson({
        'target_word': targetWord,
        'page': page,
        ...response.data['data'],
      });
    } on DioException catch (e) {
      // return e.response;
      return const SearchInfo(targetWord: '', page: 1, productList: [], totalCount: 0);
    }
  }
}
