import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile(this.title, this.nilai);

  final String title;
  final String nilai;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(nilai),
        Text(title),
      ],
    );
  }
}
