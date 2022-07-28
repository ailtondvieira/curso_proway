
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_controller.dart';
import 'widgets/fruit_button.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StateManager(title: 'State Manager'),
    );
  }
}

final counterProvider = StateProvider<int>((ref) => 0);
final nameUserProvider = ChangeNotifierProvider(((ref) => FavoritesController()));

class StateManager extends HookConsumerWidget {
  final String title;
  StateManager({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider.state);
    final namer = ref.watch(nameUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              namer.fruit,
            ),
            Text(
              counter.state.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 40,
            ),
            const FruitButton(fruit: "Maracujá"),
            const FruitButton(fruit: "Uva"),
            const FruitButton(fruit: "Maçã"),
            const FruitButton(fruit: "Jaca"),
            const FruitButton(fruit: "Banana"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}