import 'package:barita/data/model/source_model.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:json_annotation/json_annotation.dart';
part 'news_model.g.dart';

@JsonSerializable()
class NewsModel extends News {

  const NewsModel(
    {required SourceModel source, String? author,
    required String title, 
    String? description,
    required String url,
    String? urlToImage,
    required String publishedAt,
    String? content}
  ):super(
    source: source,
    author: author,
    title: title,
    description: description,
    url: url,
    urlToImage: urlToImage,
    publishedAt: publishedAt,
    content: content
  );


  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
  
  @override
  List<Object?> get props => [
    source,author,title,description,url,urlToImage,publishedAt,content,
  ];
}

