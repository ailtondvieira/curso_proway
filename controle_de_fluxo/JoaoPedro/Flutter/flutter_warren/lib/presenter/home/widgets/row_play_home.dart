import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class RowPlayHome extends StatefulWidget {
  const RowPlayHome({
    Key? key,
    required this.player,
    required this.assetsPlay,
  }) : super(key: key);

  final AudioPlayer player;
  final String assetsPlay;

  @override
  State<RowPlayHome> createState() => _RowPlayHomeState();
}

class _RowPlayHomeState extends State<RowPlayHome> {
  IconData iconPlay = Icons.play_arrow;

  String textoPlay = "Play";

  Color favorito = const Color.fromARGB(255, 255, 255, 255);

  IconData playlist = Icons.playlist_add;

  IconData download = Icons.download;

  Duration? duracao;

  int contButtonPlay = 0;

  int contButtonFav = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              contButtonFav++;
              if (contButtonFav % 2 != 0) {
                favorito = const Color.fromARGB(255, 255, 0, 0);
              } else {
                favorito = const Color.fromARGB(255, 255, 255, 255);
              }
            });
          },
          icon: Icon(
            Icons.favorite,
            color: favorito,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              playlist = Icons.playlist_add_check;
            });
          },
          icon: Icon(
            playlist,
            color: const Color.fromARGB(255, 255, 255, 255),
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(
              () {
                download = Icons.download_done;
              },
            );
          },
          icon: Icon(
            download,
            color: const Color.fromARGB(255, 255, 255, 255),
            size: 25,
          ),
        ),
        const Icon(
          Icons.more_vert,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 25,
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
                onPressed: () {
                  // setState(() {
                  //   contButton++;
                  //   iconPlay = Icons.pause;
                  //   textoPlay = "Pause";
                  // });
                  setState(() {
                    contButtonPlay++;
                    iconPlay = Icons.pause;
                    textoPlay = "Pause";
                    duracao = widget.player.position;
                    if (widget.player.playing == true) {
                      widget.player.pause();
                      iconPlay = Icons.play_arrow;
                      textoPlay = "Play";
                    } else {
                      if (contButtonPlay > 1) {
                        widget.player.seek(duracao);
                        widget.player.play();
                      } else {
                        widget.player.setAsset(widget.assetsPlay);
                        widget.player.play();
                      }
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
