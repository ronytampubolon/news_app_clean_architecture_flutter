import 'package:barita/core/utils/convert_material_color.dart';
import 'package:barita/domain/entities/news.dart';
import 'package:flutter/material.dart';

class ItemNewsFull extends StatelessWidget {
  final News news;

  const ItemNewsFull({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        children: [
          Hero(
            tag: news.title,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: (news.urlToImage != null
                  ? Image.network(
                      news.urlToImage!,
                      height: 182.0,
                      width: 310,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/newsbg.png',
                      height: 182,
                      width: 310,
                    )),
            ),
          ),
          Positioned(
            bottom: 18,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 18),
              padding: const EdgeInsets.fromLTRB(16, 17, 16, 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      buildMaterialColor(Color(0xff464646)).withOpacity(0.5),
                      buildMaterialColor(Color(0XFF2b2b2b)).withOpacity(0.21),
                      buildMaterialColor(Color(0XFFa0a0a0)).withOpacity(0.8),
                    ]),
              ),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      news.title,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/jhondoe.png'),
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
                                    color: Colors.white, fontSize: 10)),
                            Text(news.publishedDate,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
