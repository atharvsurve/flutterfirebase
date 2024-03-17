import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Inside_feed extends StatefulWidget {
  const Inside_feed({super.key});

  @override
  State<Inside_feed> createState() {
    return _Inside_feedState();
  }
}

class _Inside_feedState extends State<Inside_feed> {
  var imageFeed = [
    'lib/insideFeed/Screenshot 2023-09-24 194456.png',
    'lib/insideFeed/Screenshot 2023-09-24 194447.png',
    'lib/insideFeed/Screenshot 2023-09-24 194431.png',
    'lib/insideFeed/Screenshot 2023-09-24 194412.png',
    'lib/insideFeed/Screenshot 2023-09-24 194402.png',
    'lib/insideFeed/Screenshot 2023-09-24 194342.png',
    'lib/insideFeed/Screenshot 2023-09-24 194334.png',
    'lib/insideFeed/Screenshot 2023-09-24 194324.png',
    'lib/insideFeed/Screenshot 2023-09-24 194313.png',
    'lib/insideFeed/Screenshot 2023-09-24 171537.png',
  ];
  Color iconcolor = Colors.black;
  Color currentInsideColor = Colors.black;
  Icon abhi = const Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    void re() {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'EXPLORE',
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
            height: _mediaQuery.height * 2,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: imageFeed.length,
                itemBuilder: (BuildContext context, int index) {
                  final photopath = imageFeed.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(children: [
                      Row(
                        children: [
                          SizedBox(
                            width: _mediaQuery.width * 0.02,
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'lib/assets/Screenshot 2023-09-21 222347.png',
                            ),
                            radius: 20,
                          ),
                          SizedBox(
                            width: _mediaQuery.width * 0.02,
                          ),
                          Text(
                            'Atharv Surve ',
                            style: GoogleFonts.crimsonText(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: _mediaQuery.width * 0.39,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                            color: Colors.black,
                          )
                        ],
                      ),
                      ClipRect(
                        child: Image.asset(
                          photopath,
                        ),
                      ),
                      SizedBox(
                        height: _mediaQuery.height * 0.01,
                      ),
                      Row(
                        children: [
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
                            iconSize: 30,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: _mediaQuery.width * 0.4,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_border,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _mediaQuery.height * 0.012,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: _mediaQuery.width * 0.03,
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                                'lib/assets/Screenshot 2023-09-22 121908.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: _mediaQuery.width * 0.03,
                          ),
                          Text(
                            'Liked by and 3,500 others ',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Atharv This is Caption  ',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: _mediaQuery.height * 0.02,
                      )
                    ]),
                  );
                })),
      ),
    );
  }
}
