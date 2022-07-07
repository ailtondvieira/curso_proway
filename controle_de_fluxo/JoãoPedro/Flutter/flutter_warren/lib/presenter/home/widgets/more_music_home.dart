import 'package:flutter/material.dart';

class MoreMusicHome extends StatelessWidget {
  final String assetPath;
  final String title;
  final String banda;
  const MoreMusicHome({
    Key? key,
    required this.assetPath,
    required this.title,
    required this.banda,
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
                  image: DecorationImage(
                      image: AssetImage(assetPath), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                banda,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 200,
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
