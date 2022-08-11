import 'package:equatable/equatable.dart';

class ArticleCategory extends Equatable{
  final String id;
  final String label;

  ArticleCategory(this.id, this.label);
  
  @override
  // TODO: implement props
  List<Object?> get props => [
    id,label
  ];

}