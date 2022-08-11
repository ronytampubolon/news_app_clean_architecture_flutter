import 'package:barita/domain/entities/source.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class News extends Equatable {
  final Source source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  const News({required this.source, this.author, required this.title, required this.description, required this.url,
      required this.urlToImage, required this.publishedAt, this.content});

  String get publishedDate{
    var _date = DateTime.parse(this.publishedAt);
    return  DateFormat.yMMMEd().format(_date);

  }

  @override
  List<Object?> get props => [
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content
      ];
}
