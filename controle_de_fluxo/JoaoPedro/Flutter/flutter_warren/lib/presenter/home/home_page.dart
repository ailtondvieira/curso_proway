import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'package:flutter_warren/presenter/home/widgets/body_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.surround_sound,
              color: Color.fromARGB(255, 0, 255, 0),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Spotufy",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: BodyHomePage(player: player),
    );
  }
}
