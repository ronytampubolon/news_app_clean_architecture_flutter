// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseListNews _$ResponseListNewsFromJson(Map<String, dynamic> json) =>
    ResponseListNews(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int? ?? 0,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseListNewsToJson(ResponseListNews instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
