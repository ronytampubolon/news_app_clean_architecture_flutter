import 'package:barita/core/params/article_request.dart';
import 'package:barita/core/resources/data_state.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:barita/domain/usecases/get_news_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'remote_recomendation_event.dart';
part 'remote_recomendation_state.dart';

class RemoteRecomendationBloc extends Bloc<RemoteRecomendationEvent, RemoteRecomendationState> {
  final GetNewsUseCase _getNewsUseCase;
  RemoteRecomendationBloc(this._getNewsUseCase) : super(RecomendationArticleLoading()) {
    on<GetRecomendationArticle>((event, emit) {
      _getRecomendationArticles();
    });
  }
  Future _getRecomendationArticles() async {
    final dataState = await _getNewsUseCase(
        params:
            NewsRequestParams(category: "business", country: "id",pageSize: 5));
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RecomendationArticleDone(dataState.data!));
    } else {
      emit(RecomendationArticleError(dataState.error!));
    }
  }
}
