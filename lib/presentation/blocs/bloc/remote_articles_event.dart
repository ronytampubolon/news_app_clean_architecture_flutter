part of 'remote_articles_bloc.dart';

@immutable
abstract class RemoteArticlesEvent extends Equatable{
  const RemoteArticlesEvent();
  @override
  List<Object> get props => [];
}

class GetArticles extends RemoteArticlesEvent{
  final ArticleCategory categ;
  const GetArticles(this.categ);
}
class RefreshArticles extends RemoteArticlesEvent{
  final ArticleCategory categ;
  const RefreshArticles(this.categ);
}
