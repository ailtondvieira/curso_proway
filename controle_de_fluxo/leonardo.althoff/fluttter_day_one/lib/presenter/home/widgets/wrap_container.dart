import 'package:flutter/material.dart';

import 'container_row.dart';

class WrapContainerHome extends StatelessWidget {
  const WrapContainerHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        ContainerRow(
          title: 'Lamp',
          primaryIcon: Icons.light,
          pressed: true,
        ),
        ContainerRow(
          title: 'Router',
          primaryIcon: Icons.router,
          pressed: false,
        ),
        ContainerRow(
          title: "Air",
          primaryIcon: Icons.ac_unit,
          pressed: false,
        ),
        ContainerRow(
          title: 'TV',
          primaryIcon: Icons.tv,
          pressed: false,
        ),
      ],
    );
  }
}
