import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../home/widgets/container_header_home.dart';
import '../../home/widgets/container_music_image_home.dart';
import '../../home/widgets/more_music_home.dart';
import '../../home/widgets/padding_grey_line_home.dart';
import '../../home/widgets/padding_more_see_all_home.dart';
import '../../home/widgets/row_play_home.dart';
import '../../home/widgets/text_music_title_home.dart';

class BodyNextPage extends StatelessWidget {
  const BodyNextPage({
    Key? key,
    required this.player,
  }) : super(key: key);

  final AudioPlayer player;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              const ContainerHeaderHome(),
              const SizedBox(
                height: 60,
              ),
              const ContainerMusicImageHome(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 100,
                child: TextMusicTitleHome(),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  RowPlayHome(
                    player: player,
                    assetsPlay: '../assets/audios/Escape.mp3',
                  ),
                  const PaddingGreyLineHome(),
                  const PaddingMoreSeAllHome(),
                  const SizedBox(
                    height: 10,
                  ),
                  const MoreMusicHome(
                    assetPath: "../img/Metallica_album.jpg",
                    title: "Fade To Black",
                    banda: "Metallica",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MoreMusicHome(
                    assetPath: "../img/Metallica_album.jpg",
                    title: "Creeping Death",
                    banda: "Metallica",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MoreMusicHome(
                    assetPath: "../img/Metallica_album.jpg",
                    title: "Blackened",
                    banda: "Metallica",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
