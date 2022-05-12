import 'package:flutter/material.dart';
import 'package:ui_profile_instagram/theme.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile(this.title, this.nilai);

  final String title;
  final String nilai;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          nilai,
          style: styleValue,
        ),
        Text(
          title,
          style: styleDefault,
        ),
      ],
    );
  }
}
