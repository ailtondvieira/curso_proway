import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'src/presentation/ui/splash/splash_page.dart';

void main() {
  initializeDateFormatting('pt_BR');
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const SplashPage(),
      ),
    ),
  );
}
