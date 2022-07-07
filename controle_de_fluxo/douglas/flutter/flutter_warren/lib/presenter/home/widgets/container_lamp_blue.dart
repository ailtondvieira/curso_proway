import 'package:flutter/material.dart';

class ContainerLampBlue extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isOpened;
  final Color colorBackgrond;

  const ContainerLampBlue({
    Key? key,
    required this.icon,
    required this.title,
    required this.isOpened,
    required this.colorBackgrond,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20,
              spreadRadius: 10,
              offset: Offset(2, 8),
            ),
          ],
          color: colorBackgrond,
          borderRadius: BorderRadius.circular(20),
        ),
        width: 150,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Icon(icon,
                  size: 40,
                  color: Colors.white,
                ),
                Icon(
                  Icons.circle,
                  size: 20,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    isOpened ? 'Aberto'  : 'Fechado',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getTextOpened(bool isOpened){
    if (isOpened) {
      return 'Aberto';
    } else {
      return 'Fechado';
    }
  }

}
