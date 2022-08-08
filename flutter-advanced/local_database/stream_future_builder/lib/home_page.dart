import 'package:flutter/material.dart';
import 'package:stream_future_builder/home_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _repository = HomeRepository();
  late Future<List<String>> names;
  late Stream<int> counter;

  @override
  void initState() {
    names = _repository.getAllNames();
    counter = _repository.timedCounter(const Duration(milliseconds: 250));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
              future: names,
              builder: (context, AsyncSnapshot<List<String>> snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.toString());
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            StreamBuilder<int>(
                stream: counter,
                builder: (context, AsyncSnapshot<int> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.toString());
                  } else {
                    return const CircularProgressIndicator();
                  }
                })
          ],
        ),
      ),
    );
  }
}
