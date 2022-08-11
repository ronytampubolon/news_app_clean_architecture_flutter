import 'package:barita/data/datasources/dummy_data.dart';
import 'package:barita/domain/entities/category.dart';
import 'package:barita/presentation/blocs/bloc/remote_popular_bloc.dart';
import 'package:barita/presentation/widget/item_news_full.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

class PopularTopics extends StatelessWidget {
  const PopularTopics({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<RemotePopularBloc>().add(GetPopularTopic());
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Popular Topics",
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
        BlocBuilder<RemotePopularBloc, RemotePopularState>(
          builder: (_, state) {
            if (state is PopularTopicDone) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      height: 185,
                      width: MediaQuery.of(context).size.width - 20,
                      child: ListView.builder(
                          itemCount: state.articles!.length,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((BuildContext context, int index) {
                            return ItemNewsFull(
                              news: state.articles![index],
                            );
                          })),
                    ),
                  )
                ],
              );
            }
            if (state is PopularTopicLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            if (state is PopularTopicError) {
              return Center(
                  child: GestureDetector(
                child: Icon(Ionicons.refresh),
                onTap: () => {},
              ));
            }
            return const SizedBox(height: 5);
          },
        )

        // const ItemNewsFull(news: sampleNews)
      ],
    );
  }
}
