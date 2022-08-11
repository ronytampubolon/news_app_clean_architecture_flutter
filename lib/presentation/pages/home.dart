import 'package:barita/presentation/widget/filter_category.dart';
import 'package:barita/presentation/widget/greetings_home.dart';
import 'package:barita/presentation/widget/home_search.dart';
import 'package:barita/presentation/widget/popular_topics.dart';
import 'package:barita/presentation/widget/recomended.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return AnnotatedRegion<SystemUiOverlayStyle>(
        // ignore: prefer_const_constructors
        child: Scaffold(
            body: SafeArea(
              child: ListView(
                padding:EdgeInsets.all(20),
                children: [
                  const SizedBox(height: 46),
                  const HomeGreetings(),
                  const SizedBox(height: 32.0),
                  const HomeSearch(),
                  const SizedBox(height: 24.0),
                  const FilterCategory(),
                  const SizedBox(height: 30.0),
                  const PopularTopics(),
                  const SizedBox(height: 30.0),
                  const RecomendedList()
                ],
              ),

            )
        ),
        value: SystemUiOverlayStyle.dark);
  }
}
