import 'package:flutter/material.dart';

import '../utils/constants_animation.dart';
import 'hero_destiny_page.dart';
import 'radial_expansion.dart';

class BuildCircleHero extends StatelessWidget {
  final String imageName;
  final String description;

  const BuildCircleHero({
    Key? key,
    required this.imageName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kMinRadius * 2.0,
      width: kMinRadius * 2.0,
      child: Hero(
        tag: imageName,
        createRectTween: createRectTween,
        child: RadialExpansion(
          maxRadius: kMaxRadius,
          child: Material(
            color: Colors.grey.shade500,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return AnimatedBuilder(
                      animation: animation,
                      builder: (context, child) {
                        return Opacity(
                          opacity: opacityCurve.transform(animation.value),
                          child: HeroDestinyPage(
                              imageName: imageName, description: description),
                        );
                      },
                    );
                  },
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
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
