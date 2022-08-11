import 'package:barita/config/constants.dart';
import 'package:barita/data/model/response_list_news.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<ResponseListNews>> getTopHeadlines({
    @Query("apiKey") required String apiKey,
    @Query("country") required String country,
    @Query("category") required String category,
    @Query("page")  required int page,
    @Query("pageSize") required int pageSize,
  });

}
