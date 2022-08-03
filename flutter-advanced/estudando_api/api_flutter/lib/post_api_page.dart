import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostApiPage extends StatefulWidget {
  const PostApiPage({Key? key}) : super(key: key);

  @override
  State<PostApiPage> createState() => _PostApiPageState();
}

class _PostApiPageState extends State<PostApiPage> {
  Future postLogin() async {
    try {
      String url =
          "http://ec2-54-80-244-185.compute-1.amazonaws.com:3333/api/v1/auth/login";

      Map<String, dynamic> headers = {
        "accept": "application/json",
        "Content-Type": "application/json",
      };

      Map<String, dynamic> body = {
        "email":
            "deveda4217@logodez.com", //substituir por variavel q seria preenchida por um textformfield
        "password":
            "Teste@123" //substituir por variavel q seria preenchida por um textformfield
      };

      var response = await Dio().post(
        url,
        data: body,
        options: Options(headers: headers),
      );

      print(response.data);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            postLogin();
          },
          child: const Text("Postar")),
    );
  }
}
