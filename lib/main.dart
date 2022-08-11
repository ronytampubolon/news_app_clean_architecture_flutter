import 'package:barita/config/constants.dart';
import 'package:barita/core/utils/convert_material_color.dart';
import 'package:barita/domain/usecases/get_news_usecase.dart';
import 'package:barita/presentation/blocs/bloc/remote_articles_bloc.dart';
import 'package:barita/presentation/blocs/bloc/remote_popular_bloc.dart';
import 'package:barita/presentation/blocs/bloc/remote_recomendation_bloc.dart';
import 'package:barita/presentation/pages/list_news.dart';
import 'package:barita/presentation/pages/navigation_screen.dart';
import 'package:flutter/material.dart';

import 'package:barita/injector.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RemoteArticlesBloc>(
            create: (_) => di.injector<RemoteArticlesBloc>()),
        BlocProvider<RemotePopularBloc>(
            create: (_) => di.injector<RemotePopularBloc>()),
        BlocProvider<RemoteRecomendationBloc>(
            create: (_) => di.injector<RemoteRecomendationBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kAppName,
        theme: ThemeData(
            primarySwatch: buildMaterialColor(const Color(0xFF0167FF)),
            primaryColor: buildMaterialColor(const Color(0xFF0167FF)),
            cardColor: buildMaterialColor(const Color(0xFFE7E7E7)),
            fontFamily: 'Ubuntu'),
        initialRoute: '/',
        routes: {
          '/': (context) => const NavigationScreen(),
          '/list-news': (context) => ListNewsScreen()
        },
      ),
    );
  }
}
