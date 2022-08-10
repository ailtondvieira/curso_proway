import 'package:accessibility/home2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var localeProvider = StateProvider((ref) => 'en');

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

//TODO: aaa
//* aaaaa
//! aaaaa
//? aaaaa
//// aaaaaa

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var locales = ref.watch(localeProvider.state);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://images2.alphacoders.com/720/72092.jpg',
              semanticLabel: "Background",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
              tooltip: "Botão Save",
            ),
            const ExcludeSemantics(
              child: SizedBox(
                height: 20,
              ),
            ),
            Semantics(
              hint: "Image",
              child: InkWell(
                onLongPress: () {},
                child: const Text("Não salvar"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(AppLocalizations.of(context)!.helloWorld),
            // Text(AppLocalizationsPt().helloWorld),
            // Text(AppLocalizationsEs().helloWorld),
            // Text(AppLocalizationsEn().helloWorld),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    locales.state = 'pt';
                  },
                  child: const Text(
                    "Português",
                  ),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    locales.state = 'es';
                  },
                  child: const Text(
                    "Espanhol",
                  ),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    locales.state = 'en';
                  },
                  child: const Text(
                    "Inglês",
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const Home2Page();
                  },
                ));
              },
              child: const Text(
                "Mudar Page",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
