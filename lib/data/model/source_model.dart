import 'package:barita/domain/entities/source.dart';
import 'package:json_annotation/json_annotation.dart';
part 'source_model.g.dart';

@JsonSerializable()
class SourceModel extends Source {

  const SourceModel({String? id, required String name}):super(
    id: id,
    name: name
  );

  @override
  List<Object?> get props => [
        id,
        name,
      ];

  factory SourceModel.fromJson(Map<String, dynamic> json) => _$SourceModelFromJson(json);
  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}

