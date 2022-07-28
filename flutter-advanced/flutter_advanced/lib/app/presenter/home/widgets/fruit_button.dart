import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home_page.dart';

class FruitButton extends HookConsumerWidget {
  final String fruit;
  const FruitButton({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: (() {
        ref.watch(nameUserProvider).changeFruit(fruit);
        
      }),
      child: Text(fruit),
    );
  }
}