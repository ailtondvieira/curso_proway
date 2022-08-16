import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Center(
        child: CustonButtonWidget(
          color: const Color.fromARGB(255, 224, 43, 87), // Warren Color
          onPressed: () => navigatorKey.currentState?.pushNamed('/login'),
          text: "ir para Login",
        ),
      ),
    );
  }
}
