import 'package:flutter/material.dart';

import 'living_room_list.dart';

class ListTextHorizontal extends StatelessWidget {
  const ListTextHorizontal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        padding: const EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        children: const [
          LivingRoomList(),
          LivingRoomList(),
          LivingRoomList(),
          LivingRoomList(),
        ],
      ),
    );
  }
}