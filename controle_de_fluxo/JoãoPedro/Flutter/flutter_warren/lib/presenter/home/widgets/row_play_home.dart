import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class RowPlayHome extends StatefulWidget {
  const RowPlayHome({
    Key? key,
    required this.player,
  }) : super(key: key);

  final AudioPlayer player;

  @override
  State<RowPlayHome> createState() => _RowPlayHomeState();
}

class _RowPlayHomeState extends State<RowPlayHome> {
  IconData iconPlay = Icons.play_arrow;

  String textoPlay = "Play";

  @override
  Widget build(BuildContext context) {
    widget.player.setAsset('../assets/audios/Escape.mp3');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(
          Icons.favorite,
          color: Color.fromARGB(220, 255, 0, 0),
          size: 40,
        ),
        const Icon(
          Icons.playlist_add,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        const Icon(
          Icons.download,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        const Icon(
          Icons.more_vert,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        const SizedBox(
          width: 100,
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                alignment: Alignment.center,
                icon: Icon(
                  iconPlay,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  size: 25,
                ),
                onPressed: () async {
                  setState(() {
                    iconPlay = Icons.pause;
                    textoPlay = "Pause";
                    if (widget.player.playing == true) {
                      widget.player.pause();
                      iconPlay = Icons.play_arrow;
                      textoPlay = "Play";
                    } else {
                      widget.player.play();
                    }
                  });
                },
              ),
              Text(
                textoPlay,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
