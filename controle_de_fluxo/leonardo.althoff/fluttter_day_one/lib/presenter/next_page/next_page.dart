import 'package:flutter/material.dart';
import 'package:fluttter_day_one/core/app_assets.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "App de Treino",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imgWeather),
            Image.asset(imgWeatherApp),
            Image.asset(imgWeatherNotification),
          ],
        ),
      ),
    );
  }
}
