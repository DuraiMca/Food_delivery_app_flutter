import 'package:flutter/material.dart';

import 'StaticListimg.dart';

class StaticImagesList extends StatelessWidget {
  const StaticImagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      SizedBox(
          height: 150,
          width: double.infinity,
          child: StaticListimg("assets/loginscreenimg.jpeg")),
      SizedBox(
          height: 150,
          width: double.infinity,
          child: StaticListimg("assets/foodimages.jpeg")),
      SizedBox(
          height: 150,
          width: double.infinity,
          child: StaticListimg("assets/foodimg3.gif")),
      SizedBox(
          height: 150,
          width: double.infinity,
          child: StaticListimg("assets/fooditem4.gif"))
    ],
  );
  }
}