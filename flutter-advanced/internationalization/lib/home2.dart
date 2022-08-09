import 'package:accessibility/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home2Page extends HookConsumerWidget {
  const Home2Page({Key? key}) : super(key: key);

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
            Text(AppLocalizations.of(context)!.helloWorld),
            // Text(AppLocalizationsPt().helloWorld),
            // Text(AppLocalizationsEs().helloWorld),
            // Text(AppLocalizationsEn().helloWorld),
            const SizedBox(height: 30),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
