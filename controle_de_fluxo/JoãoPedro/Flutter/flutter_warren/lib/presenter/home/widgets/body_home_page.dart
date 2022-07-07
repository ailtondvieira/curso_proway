import 'package:flutter/material.dart';

import 'package:flutter_warren/presenter/home/widgets/padding_fade_to_black_home.dart';
import 'package:flutter_warren/presenter/home/widgets/padding_grey_line_home.dart';
import 'package:flutter_warren/presenter/home/widgets/padding_more_see_all_home.dart';
import 'package:flutter_warren/presenter/home/widgets/row_play_home.dart';
import 'package:flutter_warren/presenter/home/widgets/text_music_title_home.dart';
import 'package:just_audio/just_audio.dart';
import 'blackened_header_home.dart';
import 'container_header_home.dart';
import 'container_music_image_home.dart';
import 'creeping_header_home.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
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
                  RowPlayHome(player: player),
                  const PaddingGreyLineHome(),
                  const PaddingMoreSeAllHome(),
                  const SizedBox(
                    height: 10,
                  ),
                  const PaddingFadeToBlackHome(),
                  const SizedBox(
                    height: 20,
                  ),
                  const CreepingHeaderHome(),
                  const SizedBox(
                    height: 20,
                  ),
                  const BlackenedHeaderHome(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
