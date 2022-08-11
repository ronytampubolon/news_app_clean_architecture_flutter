part of 'remote_recomendation_bloc.dart';

@immutable
abstract class RemoteRecomendationState extends Equatable {
  final List<News>? articles;
  final DioError? error;

  const RemoteRecomendationState({ this.articles, 
    this.error}); 

  @override 
  List<Object> get props => [
  ];
}

class RecomendationArticleLoading extends RemoteRecomendationState {
  const RecomendationArticleLoading();
}
class RecomendationArticleDone extends RemoteRecomendationState {
  const RecomendationArticleDone(List<News> data):super(articles: data);
}
class RecomendationArticleError extends RemoteRecomendationState {
  const RecomendationArticleError(DioError error):super(error: error);
}
