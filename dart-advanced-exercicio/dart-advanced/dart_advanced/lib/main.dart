import 'package:auto_size_text/auto_size_text.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'getit.dart';

void main(List<String> args) {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => 
      MaterialApp(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        home: const Main(),
        debugShowCheckedModeBanner: false,
      ), // Wrap your app
    ),
  );
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse("https://flutter.dev"))) {
      throw 'Could not launch https://flutter.dev';
    }
  }

  Future<List<int>> getNumbers() async {
    await Future.delayed(const Duration(seconds: 3));
    return [1, 2, 3];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // FutureBuilder(
            //   future: getNumbers(),
            //   builder: (context, AsyncSnapshot<List<int>> snapshot) {
            //     if (!snapshot.hasData) {
            //       return const CircularProgressIndicator();
            //     }
            //     return ListView.builder(
            //       itemCount: snapshot.data!.length,
            //       itemBuilder: ((context, index) {
            //         return ListTile(
            //           title: Text("Sou o $index"),
            //         );
            //       }),
            //     );
            //   },
            // ),
            Text("${getIt.get<Modelo>().dateTemp} e ${getIt.get<Modelo>().userName}"),
            Column(
              children: [
                Center(
                  child: MaterialButton(
                    onPressed: () async {
                      await Share.share("aloooo");
                    },
                    color: Colors.blue,
                    child: const Text("Compartilhar"),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    _launchUrl();
                  },
                  color: Colors.blue,
                  child: const Text("bah"),
                ),
                Column(
                  children: const [
                    Text(
                      "Olá, meu querido",
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AutoSizeText(
                      "Olá, meu querido",
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
