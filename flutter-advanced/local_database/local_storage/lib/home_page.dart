import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LocalStorage storage = LocalStorage('data.json');

  final textController = TextEditingController();

  void saveInfoStorage() async {
    await storage.setItem('title', textController.text);
    setState(() {});
  }

  removeInfoStorage() async {
    await storage.deleteItem("title");
    textController.clear();
    setState(() {});
  }

  String getInfoStorage() {
    return storage.getItem('title') ?? '';
  }

  clearStorage() async {
    await storage.clear();
    textController.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller: textController,
            decoration: const InputDecoration(hintText: "Escreva"),
          ),
          const SizedBox(
            height: 50,
          ),
          FutureBuilder(
            future: storage.ready,
            builder: (context, snapshot) {
              if (snapshot.data == true) {
                return Text(getInfoStorage());
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              removeInfoStorage();
            },
            child: const Icon(Icons.delete),
          ),
          FloatingActionButton(
            onPressed: () {
              saveInfoStorage();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              clearStorage();
            },
            child: const Icon(Icons.delete_forever),
          ),
        ],
      ),
    );
  }
}
