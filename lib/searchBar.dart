import 'package:flutter/material.dart';

class InstagramSearchBar extends StatefulWidget {
  const InstagramSearchBar({Key? key}) : super(key: key);

  @override
  _InstagramSearchBarState createState() => _InstagramSearchBarState();
}

class _InstagramSearchBarState extends State<InstagramSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.grey[600],
            ),
          ),
          const Expanded(
            //the textfield is used to make the search bar as in it ensables user to take in input .
            child: TextField(
              // this is used to deorate an input field
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
