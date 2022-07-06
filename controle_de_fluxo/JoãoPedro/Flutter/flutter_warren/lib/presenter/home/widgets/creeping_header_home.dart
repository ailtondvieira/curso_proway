import 'package:flutter/material.dart';

class CreepingHeaderHome extends StatelessWidget {
  const CreepingHeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  image: const DecorationImage(
                      image: AssetImage("../img/Metallica_album.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Creeping Death",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Metallica",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 170,
          ),
          const Icon(
            Icons.play_circle,
            color: Color.fromARGB(255, 0, 255, 0),
            size: 40,
          ),
          const Icon(
            Icons.more_vert,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 40,
          ),
        ],
      ),
    );
  }
}
