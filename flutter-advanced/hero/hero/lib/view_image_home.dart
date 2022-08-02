import 'package:flutter/material.dart';

class ViewImageHome extends StatelessWidget {
  const ViewImageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Hero(
          tag: 'img1',
          child: Image.network(
            "https://i.pinimg.com/originals/de/1e/0d/de1e0dceb6077feaead0772b224513d9.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
