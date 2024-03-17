import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'searchBar.dart';

class inbox extends StatefulWidget {
  const inbox({super.key});
  @override
  State<StatefulWidget> createState() {
    return _inboxState();
  }
}

class _inboxState extends State<inbox> {
  var list = [
    'lib/Screenshot 2023-09-24 170842 copy.png',
    'lib/pitcures/Screenshot 2023-09-26 205855.png',
    'lib/pitcures/Screenshot 2023-09-26 205902.png',
    'lib/pitcures/Screenshot 2023-09-26 205710.png',
    'lib/pitcures/Screenshot 2023-09-26 205748.png',
    'lib/pitcures/Screenshot 2023-09-26 205825.png',
    'lib/Screenshot 2023-09-24 170758.png',
    'lib/Screenshot 2023-09-24 170824 copy.png',
    'lib/Screenshot 2023-09-24 171042.png',
    'lib/Screenshot 2023-09-24 171057 copy.png',
    'lib/Screenshot 2023-09-24 171120.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Atharv_1604',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 129,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
              color: Colors.black,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const InstagramSearchBar(),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 236, 232, 232),
                  ),
                  child: Text(
                    'Messages',
                    style: GoogleFonts.openSans(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 236, 232, 232),
                  ),
                  child: Text(
                    'Channels',
                    style: GoogleFonts.openSans(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 236, 232, 232),
                  ),
                  child: Text(
                    'Requests',
                    style: GoogleFonts.openSans(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  final pics = list.elementAt(index);

                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage(pics),
                              radius: 28,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Aditya_p',
                              style: GoogleFonts.openSans(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 146,
                            ),
                            const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
