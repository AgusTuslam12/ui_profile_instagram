import 'package:flutter/material.dart';
import 'package:ui_profile_instagram/theme.dart';
import 'package:ui_profile_instagram/widget/info_profile.dart';
import 'package:ui_profile_instagram/widget/profile_picture.dart';
import 'package:ui_profile_instagram/widget/story_item.dart';
import 'package:ui_profile_instagram/widget/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    InfoProfile("Posts", "22"),
                    InfoProfile("Followers", "533"),
                    InfoProfile("Following", "987"),
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
          child: Text(
            'Agus Tuslam',
            style: styleUser,
          ),
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
                style: styleDefault,
                children: [
                  TextSpan(
                    text: '#hastag',
                    style: styleHastag,
                  ),
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
            style: styleHastag,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultmargin),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "Edit Profile",
              style: styleDefault.copyWith(
                fontWeight: bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultmargin),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem("Story 1"),
                StoryItem("Story 2"),
                StoryItem("Story 3"),
                StoryItem("Story 5"),
                StoryItem("Story 6"),
                StoryItem("Story 7"),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TabItems(Icons.grid_on_outlined, true),
            TabItems(Icons.person_pin_outlined, false),
          ],
        ),
        GridView.builder(
          itemCount: 21,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) => Image.network(
            "https://picsum.photos/id/${index + 40}/536/354",
            fit: BoxFit.cover,
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/Home.png",
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/Search.png",
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/Reels.png",
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/Shop.png",
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://randomuser.me/api/portraits/men/32.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                ),
                label: ""),
          ]),
    );
  }
}
