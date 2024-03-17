import 'package:flutter/material.dart';
import 'onTap_Feed.dart';

class FeedForSearch extends StatefulWidget {
  const FeedForSearch({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FeedForSearchState();
  }
}

class _FeedForSearchState extends State<FeedForSearch> {
  var list = [
    'lib/Screenshot 2023-09-24 171439.png',
    'lib/Screenshot 2023-09-24 171428.png',
    'lib/Screenshot 2023-09-24 171420.png',
    'lib/Screenshot 2023-09-24 171400.png',
    'lib/Screenshot 2023-09-24 171341.png',
    'lib/Screenshot 2023-09-24 171331.png',
    'lib/Screenshot 2023-09-24 171320.png',
    'lib/Screenshot 2023-09-24 171238.png',
    'lib/Screenshot 2023-09-24 171223.png',
    'lib/Screenshot 2023-09-24 171208.png',
    'lib/Screenshot 2023-09-24 171154.png',
    'lib/Screenshot 2023-09-24 171129.png',
    'lib/Screenshot 2023-09-24 171120.png',
    'lib/Screenshot 2023-09-24 171108.png',
    'lib/Screenshot 2023-09-24 171057.png',
    'lib/Screenshot 2023-09-24 171042.png',
    'lib/Screenshot 2023-09-24 171029.png',
    'lib/Screenshot 2023-09-24 170842.png',
    'lib/Screenshot 2023-09-24 170824.png',
    'lib/Screenshot 2023-09-24 170758.png',
    'lib/Screenshot 2023-09-24 170747.png',
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: _mediaQuery.height * 0.77,
          width: _mediaQuery.width * 1,
          child: GridView.builder(
              itemCount: list.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                final img = list.elementAt(index);

                return Row(
                  children: [
                    InkWell(
                      child: Image.asset(
                        img,
                        height: _mediaQuery.height * 0.2,
                        width: _mediaQuery.width * 0.33,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (const Inside_feed())));
                      },
                    ),
                    const Divider(
                      height: 131,
                      thickness: 4,
                      color: Colors.black,
                    ),
                  ],
                );
              }),
        )
      ],
    );
  }
}
