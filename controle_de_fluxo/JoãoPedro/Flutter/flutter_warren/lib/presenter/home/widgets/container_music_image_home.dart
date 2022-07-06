import 'package:flutter/material.dart';

class ContainerMusicImageHome extends StatelessWidget {
  const ContainerMusicImageHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey,
        image: const DecorationImage(
            image: AssetImage("../img/Metallica_album.jpg"), fit: BoxFit.cover),
      ),
    );
  }
}
