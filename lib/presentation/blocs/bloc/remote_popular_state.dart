part of 'remote_popular_bloc.dart';

@immutable
abstract class RemotePopularState extends Equatable {
  final List<News>? articles;
  final DioError? error;

  const RemotePopularState({ this.articles, 
    this.error}); 

  @override 
  List<Object> get props => [
  ];
}

class PopularTopicLoading extends RemotePopularState {
  const PopularTopicLoading();
}
class PopularTopicDone extends RemotePopularState {
  const PopularTopicDone(List<News> data):super(articles: data);
}
class PopularTopicError extends RemotePopularState {
  const PopularTopicError(DioError error):super(error: error);
}
