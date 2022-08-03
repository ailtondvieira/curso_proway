import 'package:api_flutter/delete_api_page.dart';
import 'package:api_flutter/get_api_page.dart';
import 'package:flutter/material.dart';

import 'post_api_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const GetApiPage();
                    },
                  ),
                );
              },
              child: const Text("GET"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const PostApiPage();
                    },
                  ),
                );
              },
              child: const Text("POST"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DeleteApiPage(),
                  ),
                );
              },
              child: const Text("DELETE"),
            ),
          ],
        ),
      ),
    );
  }
}
