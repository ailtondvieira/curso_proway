import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DeleteApiPage extends StatefulWidget {
  const DeleteApiPage({Key? key}) : super(key: key);

  @override
  State<DeleteApiPage> createState() => _DeleteApiPageState();
}

class _DeleteApiPageState extends State<DeleteApiPage> {
  Future deleteInfo() async {
    String url =
        "http://ec2-54-80-244-185.compute-1.amazonaws.com:3333/api/v1/owners/service/557a0a51-017a-44ea-8931-594083c0f150";
    var response = await Dio().delete(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          deleteInfo();
        },
        child: const Text("Deletar"),
      ),
    );
  }
}
