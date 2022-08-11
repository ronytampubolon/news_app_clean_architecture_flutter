import 'package:barita/core/params/article_request.dart';
import 'package:barita/core/resources/data_state.dart';
import 'package:barita/core/usecases/usecase.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:barita/domain/repositories/news_repository.dart';
import 'package:flutter/material.dart';

class GetNewsUseCase implements UseCase<DataState<List<News>>,NewsRequestParams>{
  final NewsRepository _newsRepository;
  GetNewsUseCase(this._newsRepository);

  @override 
  Future<DataState<List<News>>> call({NewsRequestParams? params}){
    debugPrint("call");
    return _newsRepository.getTopHeadlines(params!);
  }

  
}