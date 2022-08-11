import 'package:barita/domain/entities/category.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final IconData? icon;
  final bool isSelected;
  final ArticleCategory category;
  final Function onTap;

  const ItemCategory({super.key, this.icon, required this.isSelected, required this.category, required this.onTap});

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap(),
      child: Container(
          margin: EdgeInsets.only(right: 8.0) ,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Theme.of(context).cardColor),
              borderRadius: BorderRadius.circular(32.0),
              color: isSelected ? Theme.of(context).primaryColor : Colors.white,
          ),
          child: icon == null
              ? Text(category.label,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey,
                      fontSize: 14.0))
              : Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.grey,
                      size: 16,
                    ),
                    Text(category.label,
                        style: TextStyle(
                            color: isSelected ? Colors.white : Colors.grey,
                            fontSize: 14.0))
                  ],
                )),
    );
  }
}
