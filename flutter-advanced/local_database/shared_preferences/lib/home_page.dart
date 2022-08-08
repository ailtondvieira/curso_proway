import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _prefs = SharedPreferences.getInstance();
  final textController = TextEditingController();

  Future<String> getInfoStorage() async {
    return _prefs.then((value) => value.getString('title') ?? '');
  }

  void saveInfoStorage() async {
    final prefss = await _prefs;
    await prefss.setString('title', textController.text);
    setState(() {});
  }

  deleteInfoStorage() async {
    final prefss = await _prefs;
    await prefss.remove('title');
    setState(() {});
  }

  removeAllStorage() async {
    final prefss = await _prefs;
    await prefss.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: textController,
              decoration: const InputDecoration(hintText: "digita ae"),
            ),
            const SizedBox(
              height: 50,
            ),
            FutureBuilder(
              future: getInfoStorage(),
              builder: (context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!);
                }
                return const CircularProgressIndicator();
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
              saveInfoStorage();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              deleteInfoStorage();
            },
            child: const Icon(Icons.delete),
          ),
          FloatingActionButton(
            onPressed: () {
              removeAllStorage();
            },
            child: const Icon(Icons.delete_forever),
          ),
        ],
      ),
    );
  }
}
