import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 80,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.blue.shade50.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                textAlign: TextAlign.center,
                controller: loginController,
                decoration: const InputDecoration(
                  hintText: "Coloque seu login",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.blue.shade50.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                textAlign: TextAlign.center,
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Coloque sua senha",
                ),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.blue.shade100,
              onPressed: () {},
              child: const Text('logar'),
            )
          ],
        ),
      ),
    );
  }
}
