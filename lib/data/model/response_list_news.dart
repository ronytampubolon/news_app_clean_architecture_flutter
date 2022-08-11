import 'package:barita/data/model/news_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'response_list_news.g.dart';

@JsonSerializable()
class ResponseListNews {
  String status;
  int totalResults; //
  List<NewsModel> articles;
  ResponseListNews({required this.status, this.totalResults = 0, required this.articles});
  factory ResponseListNews.fromJson(Map<String, dynamic> json) =>
      _$ResponseListNewsFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseListNewsToJson(this);
}
