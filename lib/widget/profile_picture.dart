import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: 88,
        height: 88,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red,
              Colors.amber,
            ],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      Container(
        width: 82,
        height: 82,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image:
                NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.white,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ]);
  }
}
