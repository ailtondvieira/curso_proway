import 'package:flutter/material.dart';

import 'card_weather_home.dart';
import 'first_container_first_row.dart';
import 'first_container_second_row.dart';
import 'list_text_horizontal.dart';
import 'music_container_footer.dart';
import 'second_container_first_row.dart';
import 'second_container_second_row.dart';
import 'shared_devices.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CardWeatherHome(),
          const SizedBox(height: 40),
          const ListTextHorizontal(),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: const [
              FirstContainerFirstRow(),
              SecondContainerFirstRow(),
              FirstContainerSecondRow(),
              SecondContainerSecondRow(),
            ],
          ),
          const SizedBox(height: 30),
          const SharedDevices(),
          const SizedBox(height: 20),
          const MusicContainerFooter(),
        ],
      ),
    );
  }
}
