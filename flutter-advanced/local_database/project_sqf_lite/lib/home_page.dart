import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_sqf_lite/database_helper.dart';

var counter = StateProvider<int>((ref) => 0);

class HomePage extends HookConsumerWidget {
  HomePage([Key? key]) : super(key: key);

  DatabaseHelper data = DatabaseHelper.instance;
  TextEditingController controller = TextEditingController();
  int index = 0;
  int number = 2;

  Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
    int i = 0;
    while (true) {
      await Future.delayed(interval);
      yield i++;
      if (i == maxCount) break;
    }
  }

  Future saveText() async {
    if (controller.text.isNotEmpty) {
      var response = await data.insertText(controller.text);
      if (response != 0) {
        print("deu certo");
      } else {
        print("deu errado");
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterPro = ref.watch(counter.state);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              onFieldSubmitted: (value) {
                saveText();
              },
              controller: controller,
              decoration: const InputDecoration(
                  hintText: "alooo galera de cowboy, alooo galera de peão"),
            ),
            const SizedBox(
              height: 50,
            ),
            FutureBuilder(
              future: data.getText(counterPro.state), //index),
              builder: (context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.toString());
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            StreamBuilder(
              stream: timedCounter(const Duration(milliseconds: 250)),
              builder: (context, snapshot) {
                return Text(snapshot.data.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterPro.state++;
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
