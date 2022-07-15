import 'package:flutter/material.dart';

class TextMusicTitleHome extends StatelessWidget {
  const TextMusicTitleHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "Escape",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Ride the Lightning, Metallica",
          style: TextStyle(
              color: Color.fromARGB(200, 255, 255, 255), fontSize: 20),
        ),
        Text(
          "Song | 20:25 mins",
          style: TextStyle(
              color: Color.fromARGB(150, 158, 158, 158), fontSize: 16),
        ),
      ],
    );
  }
}
