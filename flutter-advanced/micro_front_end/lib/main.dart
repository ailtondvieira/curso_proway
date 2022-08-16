import 'package:core/app/base_app.dart';
import 'package:core/app/micro_core_utils.dart';
import 'package:core/app/microapp.dart';
import 'package:flutter/material.dart';
import 'package:home/app/micro_app_home_resolver.dart';
import 'package:login/app/micro_app_login_resolver.dart';
import 'package:products/micro_apps_products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    super.registerRouters();
    return MaterialApp(
      title: 'Micro Front Ends',
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<Microapp> get microApps => [MicroAppLoginResolver(), MicroAppHomeResolver(), MicroAppProductsResolver()];
}
