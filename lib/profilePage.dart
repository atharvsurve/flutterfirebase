import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() {
    return _profilePageState();
  }
}

class _profilePageState extends State<profilePage> {
  var opacity1 = const Opacity(opacity: 1);
  var opacity2 = const Opacity(opacity: 0);
  var opacity3 = const Opacity(opacity: 0);
  var list = [
    'lib/Screenshot 2023-09-24 171029.png',
    'lib/Screenshot 2023-09-24 171057.png',
    'lib/Screenshot 2023-09-24 171238.png',
    'lib/Screenshot 2023-09-24 170747.png',
    'lib/pitcures/Screenshot 2023-09-26 205722.png',
    'lib/pitcures/Screenshot 2023-09-26 205748.png',
    'lib/pitcures/Screenshot 2023-09-26 205902.png',
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      // endDrawer: const Drawer(
      //   surfaceTintColor: Colors.black,
      //   child: Column(
      //     children: [],
      //   ),
      // ),
      body: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              'Atharv_1604',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined),
                iconSize: 32,
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
                iconSize: 32,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: _mediaQuery.height * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: _mediaQuery.width * 0.02,
              ),
              Column(
                children: [
                  InkWell(
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'lib/assets/Screenshot 2023-09-21 234832.png'),
                    ),
                    onTap: () {},
                    onLongPress: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Atharv Surve ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Peace ',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              SizedBox(
                width: _mediaQuery.width * 0.045,
              ),
              Column(
                children: [
                  const Text(
                    '7',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.01,
                  ),
                  const Text(
                    'Posts',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  const Text(
                    '856',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.01,
                  ),
                  const Text(
                    'Followers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  const Text(
                    '558',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: _mediaQuery.height * 0.01,
                  ),
                  const Text(
                    'Following',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(255, 230, 225, 225),
                  ),
                  child: const Text(
                    'Edit profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              InkWell(
                child: Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 230, 225, 225),
                  ),
                  child: const Text(
                    'Edit profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('lib/Screenshot 2023-09-24 170747.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Thailand',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'lib/Screenshot 2023-09-24 170758 copy.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Russia',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('lib/Screenshot 2023-09-24 170842.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Japan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('lib/Screenshot 2023-09-24 171154.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Indonesia',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'lib/Screenshot 2023-09-24 171129 copy.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Malaysia',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('lib/Screenshot 2023-09-24 171428.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Gujrat',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.view_module_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_box),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.video_library),
                  ),
                ]),
          ),
          SingleChildScrollView(
            child: Container(
              height: _mediaQuery.height * 0.26,
              width: _mediaQuery.width,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    final img = list.elementAt(index);
                    return Row(
                      children: [
                        Container(
                          child: Image.asset(
                            img,
                            height: 300,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Divider(
                          thickness: 6,
                          color: Colors.black,
                        )
                      ],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
