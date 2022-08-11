import 'package:barita/core/params/article_request.dart';
import 'package:barita/core/resources/data_state.dart';
import 'package:barita/domain/entities/news.dart';

abstract class NewsRepository{
  Future<DataState<List<News>>> getTopHeadlines(NewsRequestParams params);
}