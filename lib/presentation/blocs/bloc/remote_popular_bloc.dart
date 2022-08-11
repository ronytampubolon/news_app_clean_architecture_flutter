import 'package:barita/core/params/article_request.dart';
import 'package:barita/core/resources/data_state.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:barita/domain/usecases/get_news_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'remote_popular_event.dart';
part 'remote_popular_state.dart';

class RemotePopularBloc extends Bloc<RemotePopularEvent, RemotePopularState> {
  final GetNewsUseCase _getNewsUseCase;
  RemotePopularBloc(this._getNewsUseCase) : super(const PopularTopicLoading()) {
    on<GetPopularTopic>((event, emit) {
      debugPrint("Get Popular Topic");
      _getPopularTopic();
    });
  }
  Future _getPopularTopic() async {
    final dataState = await _getNewsUseCase(
        params:
            NewsRequestParams(category: "general", country: "id",pageSize: 5));
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(PopularTopicDone(dataState.data!));
    } else {
      emit(PopularTopicError(dataState.error!));
    }
  }
  
}
