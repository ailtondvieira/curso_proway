import 'package:flutter/material.dart';

import '../utils/constants_animation.dart';
import 'radial_expansion.dart';

class HeroDestinyPage extends StatelessWidget {
  const HeroDestinyPage({
    Key? key,
    required this.imageName,
    required this.description,
  }) : super(key: key);

  final String imageName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      alignment: FractionalOffset.center,
      child: SizedBox(
        height: kMaxRadius * 3,
        width: kMaxRadius * 3,
        child: Hero(
          tag: imageName,
          createRectTween: createRectTween,
          child: RadialExpansion(
            maxRadius: kMaxRadius,
            child: Material(
              color: Colors.grey.shade500,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  imageName,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
