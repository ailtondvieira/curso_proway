import 'package:flutter/material.dart';

class ContainerRow extends StatelessWidget {
  final String title;
  final IconData primaryIcon;
  final bool pressed;
  late String subtitle = "CLOSED";
  late Color iconColor;
  late Color backgroundColor;
  late Color secondIconColor;
  late Color textColor;
  late Color secondaryColor;

  void definePressed() {
    if (pressed) {
      subtitle = "OPENED";
      backgroundColor = Colors.blue;
      secondIconColor = Colors.white;
      textColor = Colors.white;
      iconColor = textColor;
      secondaryColor = Colors.white70;
    } else {
      subtitle = "CLOSED";
      backgroundColor = Colors.white;
      secondIconColor = Colors.red;
      textColor = Colors.black;
      iconColor = Colors.blue;
      secondaryColor = textColor;
    }
  }

  ContainerRow({
    Key? key,
    required this.title,
    required this.primaryIcon,
    required this.pressed,
  }) : super(key: key) {
    definePressed();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade100,
            blurRadius: 5,
            spreadRadius: 5,
            offset: const Offset(8, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                primaryIcon,
                size: 30,
                color: iconColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    color: secondaryColor,
                  ),
                ),
              )
            ],
          ),
          Icon(
            Icons.circle,
            color: secondIconColor,
            size: 30,
          ),
        ],
      ),
    );
  }
}
