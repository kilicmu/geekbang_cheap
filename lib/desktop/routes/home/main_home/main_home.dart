import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/components/search_bar/search_bar.dart';
import 'package:geekbang_simple/desktop/routes/home/main_home/all_courses/all_courses.dart';
import 'package:geekbang_simple/desktop/routes/home/main_home/top_bar/top_bar.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(),
          Hero(
            tag: 'search',
            child: SearchBar(
              width: 960,
              editable: false,
              onPress: () {
                Navigator.of(context).pushNamed("/search");
              },
            ),
          ),
          // Expanded(child: ),
          Container(margin: EdgeInsets.only(top: 42.0), child: AllCourses())
        ],
      ),
    );
  }
}
