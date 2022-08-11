part of 'remote_articles_bloc.dart';

@immutable
abstract class RemoteArticlesState extends Equatable {
  final List<News>? articles;
  final bool? noMoreData;
  final DioError? error;
  final ArticleCategory? category;
  const RemoteArticlesState({ this.articles, 
   this.noMoreData, this.error,this.category}); 

  @override 
  List<Object> get props => [
  ];

}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}
class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<News> data,ArticleCategory _categ,{bool noMoreData=false})
  :super(articles: data,noMoreData: noMoreData,category: _categ);
}
class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioError error):super(error: error);
}
