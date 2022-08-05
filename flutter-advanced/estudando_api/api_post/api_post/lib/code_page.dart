import 'package:api_post/code_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'code_model.dart';

class CodePage extends StatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  CodeRepository cryp =
      CodeRepository(dio: Dio(), code: CodeModel(data: "Hello", key: "opa"));
  late Future<String?> encrypt;
  late Future<String?> decrypt;

  @override
  void initState() {
    encrypt = cryp.postEncrypting();
    decrypt = cryp.postDecrypting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: FutureBuilder(
              future: Future.wait([encrypt, decrypt]),
              builder: (context, AsyncSnapshot<List<String?>> snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                return Column(
                  children: [
                    Text("Hello encriptado: ${snapshot.data![0]!}"),
                    Text("Hello Decriptado: ${snapshot.data![1]!}"),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
