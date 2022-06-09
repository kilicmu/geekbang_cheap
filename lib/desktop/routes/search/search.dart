import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/components/search_bar/search_bar.dart';
import 'package:geekbang_simple/desktop/layout/default_page.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageLayout(
        child: SingleChildScrollView(
            child: Column(
      children: const [
        Hero(tag: "search", child: SearchBar()),
      ],
    )));
  }
}
