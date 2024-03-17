import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'followingFeed.dart';
import 'inboxPage.dart';
import 'profilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  Color iconcolor = Colors.black;
  Color currentInsideColor = Colors.black;
  Icon abhi = const Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text(
                  'Instagram',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.lobster(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: abhi,
                    color: iconcolor,
                    highlightColor: currentInsideColor,
                    onPressed: () {
                      setState(() {
                        if (iconcolor == Colors.black) {
                          iconcolor = Colors.red;
                          abhi = const Icon(Icons.favorite);
                        } else {
                          iconcolor = Colors.black;
                          abhi = const Icon(Icons.favorite_border);
                        }
                      });
                    },
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (const inbox())));
                    },
                    icon: const Icon(Icons.send),
                    color: Colors.black,
                  ),
                ],
              ),
              const FollowingFeed(),
            ],
          ),
        ),
        Container(
          child: const inbox(), //page view ka kamal
        )
      ],
    );
  }
}
/*
MaterialStateProperty<Color> getColor(Color color, Color colorpressed) {
  final getcolor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorpressed;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getcolor);
}*/
