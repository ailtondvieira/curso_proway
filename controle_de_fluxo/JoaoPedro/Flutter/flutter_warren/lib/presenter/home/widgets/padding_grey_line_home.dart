import 'package:flutter/material.dart';

class PaddingGreyLineHome extends StatelessWidget {
  const PaddingGreyLineHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        bottom: 40.0,
        left: 30,
        right: 30,
      ),
      child: Container(
        height: 1,
        decoration: const BoxDecoration(
          color: Color.fromARGB(96, 158, 158, 158),
        ),
      ),
    );
  }
}
