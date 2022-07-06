import 'package:flutter/material.dart';

class ContainerPlayerFooter extends StatelessWidget {
  const ContainerPlayerFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(10),
        width: 300,
        // color: Colors.amber,
        child: Row(
          children: [
            Column(
              children: const [Icon(Icons.circle)],
            ),
            Column(
              children: const [
                Text(
                  'teste',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'teste',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Icon(Icons.fast_rewind),
            const Icon(Icons.pause),
            const Icon(Icons.fast_forward),
          ],
        ),
      ),
    );
  }
}