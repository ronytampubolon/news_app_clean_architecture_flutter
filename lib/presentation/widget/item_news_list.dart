import 'package:barita/domain/entities/news.dart';
import 'package:flutter/material.dart';

class ItemNewsList extends StatelessWidget {
  final News news;

  const ItemNewsList({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: (news.urlToImage != null
                  ? Image.network(
                      news.urlToImage!,
                      height: 91.0,
                      width: 91,
                      fit: BoxFit.cover,
                    )
                  : Image.asset('assets/images/newsbg.png',height: 91,width: 91,)),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(news.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        overflow: TextOverflow.fade)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/jhondoe.png'),
                      radius: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(news.author ?? "-",
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 10)),
                            Text(news.publishedDate,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10))
                          ],
                        )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
