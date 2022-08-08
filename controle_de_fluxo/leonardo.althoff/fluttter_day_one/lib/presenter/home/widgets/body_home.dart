import 'package:flutter/material.dart';

import 'card_weather_home.dart';
import 'list_text_horizontal.dart';
import 'music_container_footer.dart';
import 'shared_devices.dart';
import 'wrap_container.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CardWeatherHome(),
        SizedBox(height: 40),
        ListTextHorizontal(),
        WrapContainerHome(),
        SizedBox(height: 30),
        SharedDevices(),
        SizedBox(height: 20),
        MusicContainerFooter(),
      ],
    );
  }
}
