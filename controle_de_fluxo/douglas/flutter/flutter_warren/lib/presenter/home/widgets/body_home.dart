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
                    ContainerLampBlue(
                      icon: Icons.one_k,
                      title: 'container1',
                      isOpened: true,
                      colorBackgrond: Colors.amber,
                    ),
                    ContainerLamp(
                      icon: Icons.two_k,
                      title: 'container2',
                      isOpened: true,
                      colorBackgrond: Color.fromARGB(255, 160, 153, 133),
                    ),
                    ContainerLamp(
                      icon: Icons.three_k,
                      title: 'container3',
                      isOpened: true,
                      colorBackgrond: Color.fromARGB(255, 73, 75, 105),
                    ),
                    ContainerLamp(
                      icon: Icons.four_k,
                      title: 'continer4',
                      isOpened: false,
                      colorBackgrond: Color.fromARGB(255, 70, 99, 67),
                    ),
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
