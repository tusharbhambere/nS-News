import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app_web_app/src/network/Model/news.model.dart';
import 'package:news_app_web_app/src/network/Repository/api.service.dart';

//global
final articleProvider = FutureProvider.autoDispose<List<Article>>((ref) async {
  return await ref.watch(apiRepoService).getTopNews();
});
