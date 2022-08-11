import 'package:barita/domain/entities/category.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:barita/presentation/blocs/bloc/remote_recomendation_bloc.dart';
import 'package:barita/presentation/widget/item_news_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

class RecomendedList extends StatelessWidget {
  const RecomendedList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<RemoteRecomendationBloc>().add(GetRecomendationArticle());
    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Recomended For You",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      )),
                  GestureDetector(
                    onTap: () => {
                      Navigator.pushNamed(context, '/list-news',
                      arguments: ArticleCategory("","All"))
                    },
                    child: Text("See all",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor,
                          fontSize: 12.0,
                        )),
                  )
                ]),
            SizedBox(
              height: 20.0,
            ),
            BlocBuilder<RemoteRecomendationBloc, RemoteRecomendationState>(
              builder: (_, state) {
                if (state is RecomendationArticleDone) {
                  return Column(
                    children: buildListNewsWidget(state.articles!),
                  );
                }
                if (state is RecomendationArticleLoading) {
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                }
                if (state is RecomendationArticleError) {
                  return Center(
                      child: GestureDetector(
                    child: Icon(Ionicons.refresh),
                    onTap: () => {},
                  ));
                }
                return SizedBox();
              },
            )
          ]),
    );
  }

  buildListNewsWidget(List<News> _listNews) {
    List<Widget> recomendNews = [];
    _listNews.forEach((News item) {
      recomendNews.add(GestureDetector(
        onTap: () => {},
        child: ItemNewsList(news: item),
      ));
    });
    return recomendNews;
  }
}
