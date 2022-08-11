import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Source extends Equatable{
  final String? id;
  final String name;

  const Source({this.id, required this.name});
  
  @override
  List<Object?> get props => [
    id,name
  ];

}