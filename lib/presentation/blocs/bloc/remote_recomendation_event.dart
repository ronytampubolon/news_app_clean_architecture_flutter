part of 'remote_recomendation_bloc.dart';

@immutable
abstract class RemoteRecomendationEvent extends Equatable {
  const RemoteRecomendationEvent();

  @override
  List<Object?> get props => [];
}

class GetRecomendationArticle extends RemoteRecomendationEvent {
  const GetRecomendationArticle();
}
