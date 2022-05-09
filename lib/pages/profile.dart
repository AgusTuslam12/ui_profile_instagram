import 'package:flutter/material.dart';
import 'package:ui_profile_instagram/widget/info_profile.dart';
import 'package:ui_profile_instagram/widget/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              'Agus',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              ProfilePicture(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoProfile("Posts", "000"),
                    InfoProfile("Followers", "000"),
                    InfoProfile("Following", "000"),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Agus Tuslam'),
        ),
        SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: TextSpan(
                text:
                    "Amet mollit voluptate cillum ullamco. Sunt sit adipisicing occaecat nulla. ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                      text: '#hastag',
                      style: TextStyle(
                        color: Colors.blue,
                      ))
                ]),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Link goes here",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ]),
    );
  }
}
