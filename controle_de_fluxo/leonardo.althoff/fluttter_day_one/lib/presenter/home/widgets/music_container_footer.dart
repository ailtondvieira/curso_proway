import 'package:flutter/material.dart';

class MusicContainerFooter extends StatelessWidget {
  const MusicContainerFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 450,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue.shade100, Colors.blue.shade300]),
        ),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.music_note,
                color: Colors.black87,
                size: 30,
              ),
            ),
            SizedBox(width: 30),
            Text(
              "Name of the song",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(width: 60),
            Icon(
              Icons.skip_previous,
              color: Colors.black45,
              size: 30,
            ),
            Icon(
              Icons.pause,
              color: Colors.black87,
              size: 30,
            ),
            Icon(
              Icons.skip_next,
              color: Colors.black45,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
