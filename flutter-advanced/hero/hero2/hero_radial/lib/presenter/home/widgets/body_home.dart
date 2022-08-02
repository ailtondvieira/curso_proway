import 'package:flutter/material.dart';

import 'build_circle_hero.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      alignment: FractionalOffset.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BuildCircleHero(
            imageName: "assets/images/seele_color.png",
            description: "Seele Color",
          ),
          BuildCircleHero(
            imageName: "assets/images/seele_full.png",
            description: "Seele Full",
          ),
          BuildCircleHero(
            imageName: "assets/images/seele_simple.png",
            description: "Seele Simple",
          ),
        ],
      ),
    );
  }
}
