import 'package:flutter/material.dart';

class FollowerScroll extends StatefulWidget {
  const FollowerScroll({super.key});

  @override
  State<FollowerScroll> createState() {
    return _FollowerScrollState();
  }
}

class _FollowerScrollState extends State<FollowerScroll> {
  final Map<String, String> usernameToPhoto = {
    'Atharv_1604': 'lib/assets/Screenshot 2023-09-21 234832.png',
    'Swayam': 'lib/assets/Screenshot 2023-09-21 234734.png',
    'vishesh': 'lib/assets/Screenshot 2023-09-21 234624.png',
    'Harshendu': 'lib/assets/Screenshot 2023-09-21 234553.png',
    'kiran': 'lib/assets/Screenshot 2023-09-21 235300.png',
    'Garry': 'lib/assets/Screenshot 2023-09-21 234905.png',
    'Sachin': 'lib/assets/Screenshot 2023-09-21 234953.png',
    'Sajin': 'lib/assets/Screenshot 2023-09-21 235038.png',
    'Shatrugnanath': 'lib/assets/Screenshot 2023-09-21 235214.png',
    'Naresh': 'lib/assets/Screenshot 2023-09-21 235300.png',
    'Sandeep': 'lib/assets/Screenshot 2023-09-21 235349.png',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: usernameToPhoto.length,
            itemBuilder: (BuildContext context, int index) {
              final username = usernameToPhoto.keys
                  .elementAt(index); //this is used to acces data inside the map
              final photoPath =
                  usernameToPhoto[username]!; // Non-null assertion

              return Padding(
                padding: const EdgeInsets.all(8),
                // gesture is ised cause Iconbutton made the image look very small
                child: InkWell(
                  // if we wish to convert any container or widget which is not a button into a button use inkwell
                  onTap: () {},
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 31,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(photoPath),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        username,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
