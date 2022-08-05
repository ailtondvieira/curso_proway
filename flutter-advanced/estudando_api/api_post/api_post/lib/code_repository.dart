import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'code_model.dart';

class CodeRepository {
  Dio dio;
  CodeModel code;
  CodeRepository({
    required this.dio,
    required this.code,
  });

  Future<String> postEncrypting() async {
    try {
      String url = "https://classify-web.herokuapp.com/api/encrypt";

      Map<String, dynamic> headers = {
        "accept": "application/json",
        "Content-Type": "application/json",
      };

      var response = await dio.post(
        url,
        data: code.toMap(),
        options: Options(headers: headers),
      );
      return response.data["result"];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return "";
    }
  }

  Future<String> postDecrypting() async {
    try {
      String url = "https://classify-web.herokuapp.com/api/decrypt";

      Map<String, dynamic> headers = {
        "accept": "application/json",
        "Content-Type": "application/json",
      };

      var response = await dio.post(
        url,
        data: CodeModel(data: await postEncrypting(), key: code.key).toMap(),
        options: Options(headers: headers),
      );
      return response.data["result"];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return "";
    }
  }
}
