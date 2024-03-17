import 'package:flutter/material.dart';
import 'searcPage_FeedList.dart';
import 'searchBar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  @override
  State<SearchPage> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          InstagramSearchBar(),
          FeedForSearch(),
        ],
      ),
    );
  }
}
