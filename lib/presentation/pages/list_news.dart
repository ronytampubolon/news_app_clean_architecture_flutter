import 'package:barita/core/bloc/bloc_with_state.dart';
import 'package:barita/domain/entities/category.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:barita/presentation/blocs/bloc/remote_articles_bloc.dart';
import 'package:barita/presentation/widget/item_news_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';

class ListNewsScreen extends HookWidget {
  ListNewsScreen({super.key});
  late ArticleCategory args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as ArticleCategory;
    final scrollController = useScrollController();
    useEffect(() {
      scrollController
          .addListener(() => _onScrollListener(context, scrollController));
    }, [scrollController]);
    BlocProvider.of<RemoteArticlesBloc>(context).add(GetArticles(args));
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context, scrollController),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text("${args.label} News"),
    );
  }

  Widget _buildBody(BuildContext context, ScrollController scrollController) {
    return BlocBuilder<RemoteArticlesBloc, RemoteArticlesState>(
      builder: (_, state) {
        // Check if Old State Category is different and call refresh
         if(state.category != args){
            context.read<RemoteArticlesBloc>().add(RefreshArticles(args));
          }
        if (state is RemoteArticlesLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state is RemoteArticlesError) {
          return Center(
              child: GestureDetector(
            child: Icon(Ionicons.refresh),
            onTap: () => {
              context.read<RemoteArticlesBloc>().add(RefreshArticles(args))
            },
          ));
        }
        if (state is RemoteArticlesDone) {
          return _buildArticle(
              scrollController, state.articles!, state.noMoreData!);
        }

        return const SizedBox(
          height: 10,
        );
      },
    );
  }

  Widget _buildArticle(
      ScrollController scrollController, List<News> articles, bool noMoreData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        controller: scrollController,
        children: [
          ...List<Widget>.from(articles.map((item) =>
              Builder(builder: (context) => ItemNewsList(news: item)))),
          if (noMoreData)
            ...[]
          else ...[
            const Padding(
              padding: EdgeInsets.all(16),
              child: CupertinoActivityIndicator(),
            )
          ]
        ],
      ),
    );
  }

  void _onScrollListener(
      BuildContext context, ScrollController scrollController) {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;
    final remoteArticleBloc = BlocProvider.of<RemoteArticlesBloc>(context);
    final state = remoteArticleBloc.blocProcessState;
    if (currentScroll > maxScroll && state == BlocProcessState.idle) {
      remoteArticleBloc.add(GetArticles(args));
    }
  }
}
