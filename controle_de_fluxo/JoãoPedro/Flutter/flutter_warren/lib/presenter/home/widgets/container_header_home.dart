import 'package:flutter/material.dart';

import '../../next_page/next_page.dart';

class ContainerHeaderHome extends StatelessWidget {
  const ContainerHeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) {
                    return const NextPage();
                  }),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 40,
            ),
          ),
          const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 40,
          ),
        ],
      ),
    );
  }
}
