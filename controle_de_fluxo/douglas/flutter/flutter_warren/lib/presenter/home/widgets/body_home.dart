import 'package:flutter/material.dart';
import 'package:flutter_warren/presenter/home/widgets/container_lamp_blue.dart';

import '../../page2/page2.dart';
import 'card_weather_home.dart';
import 'container_lamp.dart';
import 'container_player_footer.dart';
import 'list_container_horizontal.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CardWeatherHome(),
            IconButton(
              icon: const Icon(
                Icons.navigate_next_sharp,
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Page2();
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            const ListTextHorizontal(),
            Column(
              children: [
                Wrap(
                  children: const [
                    ContainerLampBlue(),
                    ContainerLamp(),
                    ContainerLamp(),
                    ContainerLamp(),
                  ],
                ),
                // const RowCardsLamp(),
                //const RowCardsLamp(),
                Column(
                  children: const [
                    ContainerPlayerFooter(),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
