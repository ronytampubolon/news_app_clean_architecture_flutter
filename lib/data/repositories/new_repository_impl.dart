import 'dart:io';

import 'package:barita/data/datasources/remote/news_api_service.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:barita/core/resources/data_state.dart';
import 'package:barita/core/params/article_request.dart';
import 'package:barita/domain/repositories/news_repository.dart';
import 'package:dio/dio.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsApiService _newsApiService;
  const NewsRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<News>>> getTopHeadlines(
      NewsRequestParams params) async {
    try {
      final httpResponse = await _newsApiService.getTopHeadlines(
        apiKey: params.apiKey,
        country: params.country,
        category: params.category,
        page: params.page,
        pageSize: params.pageSize,
      );
      
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.articles);
      }
      return DataError(DioError(
          error: httpResponse.response.statusMessage,
          type: DioErrorType.response,
          requestOptions:httpResponse.response.requestOptions));
    } on DioError catch (e) {
      return DataError(e);
    }
  }
}
