import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FollowerScroll.dart';

class FollowingFeed extends StatefulWidget {
  const FollowingFeed({super.key});

  @override
  State<FollowingFeed> createState() {
    return _FollowingFeedState();
  }
}

class _FollowingFeedState extends State<FollowingFeed> {
  var myMap = {
    'lib/assets/Screenshot 2023-09-22 121908.png': 'Atharv_Surve',
    'lib/assets/Screenshot 2023-09-21 195130.png': 'Flower_lover',
    'lib/assets/Screenshot 2023-09-21 194917.png': 'Lion_official',
    'lib/assets/Screenshot 2023-09-21 195001.png': 'Tiger_World',
    'lib/assets/Screenshot 2023-09-21 195026.png': 'Mountain__ ',
    'lib/assets/Screenshot 2023-09-21 195102.png': 'galaxyPicture',
  };
  Color iconcolor = Colors.black;
  Color currentInsideColor = Colors.black;
  Icon abhi = const Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: _mediaQuery.height * 0.765,
              //heres how i use listView.builder -> it contains scroll direction -> itemcount ->itembuilder(this is a function which will generally return padding )
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: myMap.length + 2,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Container(
                      child: const FollowerScroll(),
                    );
                  } else if (index == myMap.length + 1) {
                    return Container(
                      child: Image.asset(
                        'lib/assets/Screenshot 2023-09-22 131835.png',
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    final itemIndex = index - 1;
                    final username = myMap.values.elementAt(
                        itemIndex); //this is used to acces data inside the map
                    final photoPath = myMap.keys.elementAt(itemIndex);

                    return Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox(
                              width: _mediaQuery.width * 0.03,
                            ),
                            const CircleAvatar(
                              backgroundImage: AssetImage(
                                'lib/assets/Screenshot 2023-09-21 222347.png',
                              ),
                              radius: 20,
                            ),
                            SizedBox(
                              width: _mediaQuery.width * 0.026,
                            ),
                            Text(
                              username,
                              style: GoogleFonts.crimsonText(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: _mediaQuery.width * 0.417,
                            ),
                            IconButton(
                              alignment: Alignment.topLeft,
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert),
                              color: Colors.black,
                            )
                          ],
                        ),
                        Image.asset(photoPath),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: abhi,
                              color: iconcolor,
                              iconSize: 30,
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
                            const SizedBox(
                              width: 152,
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
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const CircleAvatar(
                              backgroundImage: AssetImage(
                                  'lib/assets/Screenshot 2023-09-22 121908.png'),
                              radius: 12,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Liked by $username and 350 others ',
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
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              ' $username This is Caption  ',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            )
                            /*ReadMoreText(
                              ' Into the wilderness, we roam\n,On paths unknown, \nwe find our home.',
                              trimLines: 3,
                              preDataText: username,
                              preDataTextStyle:
                                  const TextStyle(fontWeight: FontWeight.w500),
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Read More',
                              trimExpandedText: 'Show less',
                            ),*/
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        )
                      ]),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateImage(selectedKey) {
    // Check if the key exists in the map
    if (myMap.containsKey(selectedKey)) {
      // Update the image at the identified key
      setState(() {
        if (iconcolor == Colors.white) {
          iconcolor = Colors.red;
          abhi = const Icon(Icons.favorite);
        } else {
          iconcolor = Colors.white;
          abhi = const Icon(Icons.favorite_border);
        } // Replace with the new image or updated data
      });
    }
  }
}
