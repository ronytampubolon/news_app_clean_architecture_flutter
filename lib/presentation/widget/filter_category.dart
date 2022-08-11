import 'package:barita/data/datasources/category_data.dart';
import 'package:barita/domain/entities/category.dart';
import 'package:barita/presentation/widget/item_category.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FilterCategory extends StatelessWidget {
  const FilterCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ItemCategory(
            icon: Ionicons.options_outline,
            category: ArticleCategory("filter", "Filter"),
            isSelected: false,
            onTap: () {}),
        Expanded(
          child: Container(
            height: 32,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemCategory(
                    category: categories[index],
                    isSelected: categories[index].label == "All" ? true : false,
                    onTap: () {
                      print(categories[index].label);
                      Navigator.pushNamed(context, '/list-news',
                          arguments: categories[index]);
                    },
                  );
                }),
          ),
        ),
        //  ItemCategory(label: "All",isSelected: false),
      ],
    );
  }
}
