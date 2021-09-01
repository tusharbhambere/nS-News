import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app_web_app/src/network/Model/news.model.dart';
import 'package:news_app_web_app/src/utiltiy/constant.dart';
import 'package:news_app_web_app/src/utiltiy/exception.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(
      BaseOptions(baseUrl: constant.baseUrl, queryParameters: constant.params));
});
final apiRepoService = Provider<ApiService>((ref) {
  return ApiService(ref.read);
});

abstract class BaseApi {
  Future<List<Article>> getTopNews();
}

class ApiService implements BaseApi {
  final Reader reader;

  ApiService(this.reader);
  @override
  Future<List<Article>> getTopNews() async {
    final response = await reader(dioProvider).get('/top-headlines');

    try {
      final result = TopHeadline.fromJson(response.data);
      final String status = result.status!;
      print(status);
      final List<Article> article = result.articles!;

      return article;
    } on DioError catch (e) {
      throw DataException.fromDioError(e);
    }
  }
}
