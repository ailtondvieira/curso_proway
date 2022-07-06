import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.surround_sound,
              color: Color.fromARGB(255, 0, 255, 0),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Spotuy",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.menu,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 40,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                    image: const DecorationImage(
                        image: AssetImage("../img/Metallica_album.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Escape",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Ride the Lightning, Metallica",
                        style: TextStyle(
                            color: Color.fromARGB(200, 255, 255, 255),
                            fontSize: 20),
                      ),
                      Text(
                        "Song | 20:25 mins",
                        style: TextStyle(
                            color: Color.fromARGB(150, 158, 158, 158),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 40,
                          ),
                          const Icon(
                            Icons.playlist_add,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 40,
                          ),
                          const Icon(
                            Icons.download,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 40,
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 40,
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.play_arrow,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  size: 40,
                                ),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40.0,
                          bottom: 40.0,
                          left: 30,
                          right: 30,
                        ),
                        child: Container(
                          height: 1,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(96, 158, 158, 158),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "More Like this",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
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
                                        image: AssetImage(
                                            "../img/Metallica_album.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Fade To Black",
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
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
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
                                        image: AssetImage(
                                            "../img/Metallica_album.jpg"),
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
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
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
                                        image: AssetImage(
                                            "../img/Metallica_album.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Blackened",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 250,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
