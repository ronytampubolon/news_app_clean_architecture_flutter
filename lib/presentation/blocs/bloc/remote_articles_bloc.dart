import 'package:barita/core/params/article_request.dart';
import 'package:barita/core/resources/data_state.dart';
import 'package:barita/data/datasources/dummy_data.dart';
import 'package:barita/domain/entities/category.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:barita/domain/usecases/get_news_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:barita/core/bloc/bloc_with_state.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'remote_articles_event.dart';
part 'remote_articles_state.dart';

class RemoteArticlesBloc
    extends BlocWithState<RemoteArticlesEvent, RemoteArticlesState> {
  final GetNewsUseCase _getNewsUseCase;
  

  RemoteArticlesBloc(this._getNewsUseCase)
      : super(const RemoteArticlesLoading()) {
    on<GetArticles>((event, emit) async {
      _getListNews(event.categ);
    });
    on<RefreshArticles>((event, emit) async {
      emit(RemoteArticlesLoading());
      _articles.clear();
      _page = 1;
      _getListNews(event.categ);
    });
   
  }

  final List<News> _articles = [];
  int _page = 1;
  static const int _pageSize = 10;

  Future _getListNews(ArticleCategory categ) async {
    final dataState = await _getNewsUseCase(
        params:
            NewsRequestParams(category: categ.id, country: "id", page: _page));
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      final articles = dataState.data;
      final noMoreData = articles!.length < _pageSize;
      _articles.addAll(articles);
      _page++;

      _articles.addAll(listNews);
      emit(RemoteArticlesDone(_articles,categ, noMoreData: noMoreData));
    } else {
      emit(RemoteArticlesError(dataState.error!));
    }
  }

  
}
