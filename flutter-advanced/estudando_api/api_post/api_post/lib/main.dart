import 'package:flutter/material.dart';

import 'code_page.dart';

void main() async {
  // Future<String?> postEncrypting() async {
  //   try {
  //     String url = "https://classify-web.herokuapp.com/api/encrypt";

  //     Map<String, dynamic> headers = {
  //       "accept": "application/json",
  //       "Content-Type": "application/json",
  //     };

  //     var response = await Dio().post(
  //       url,
  //       data: CodeModel(data: "Hello", key: "ola").toMap(),
  //       options: Options(headers: headers),
  //     );
  //     print(response.data["result"]);
  //     return response.data["result"];
  //   } catch (e) {
  //     print(e);
  //     return null;
  //   }
  // }

  // print(await postEncrypting());

  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const CodePage(),
    ),
  );
}
