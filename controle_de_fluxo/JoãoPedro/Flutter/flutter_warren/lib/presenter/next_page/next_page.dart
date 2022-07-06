import 'package:flutter/material.dart';
import 'package:flutter_warren/presenter/next_page/widgets/body_next_page.dart';
import 'package:just_audio/just_audio.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_circle_left,
            color: Color.fromARGB(255, 0, 255, 0),
            size: 30,
          ),
        ),
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
              "Spotuy",
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
      body: BodyNextPage(player: player),
    );
  }
}
