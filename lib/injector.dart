import 'package:barita/data/datasources/remote/news_api_service.dart';
import 'package:barita/data/repositories/new_repository_impl.dart';
import 'package:barita/domain/repositories/news_repository.dart';
import 'package:barita/domain/usecases/get_news_usecase.dart';
import 'package:barita/presentation/blocs/bloc/remote_articles_bloc.dart';
import 'package:barita/presentation/blocs/bloc/remote_popular_bloc.dart';
import 'package:barita/presentation/blocs/bloc/remote_recomendation_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final injector = GetIt.instance;
Future<void> init() async {
  // Dio Client
  injector.registerSingleton<Dio>(Dio());
  // Dependencies
  injector.registerSingleton<NewsApiService>(NewsApiService(injector()));
  injector.registerSingleton<NewsRepository>(NewsRepositoryImpl(injector()));
  // Usecases
  injector.registerSingleton<GetNewsUseCase>(GetNewsUseCase(injector()));
  // bloc
  injector.registerSingleton<RemoteArticlesBloc>(RemoteArticlesBloc(injector()));
  injector.registerSingleton<RemotePopularBloc>(RemotePopularBloc(injector()));
  injector.registerSingleton<RemoteRecomendationBloc>(RemoteRecomendationBloc(injector()));
}
