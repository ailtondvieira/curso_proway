import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  FocusNode focusEmail = FocusNode();
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Form(
        key: keyForm,
        child: Column(
          children: [
            TextFormField(
              // onSubmitted: (value) {
              //   focusEmail.requestFocus();
              // },
              autovalidateMode: AutovalidateMode.always,
              validator: ((value) {
                if (value!.isEmpty) {
                  return "A senha tá vazia";
                } else {
                  return null;
                }
              }),
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'nome',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                focusEmail.requestFocus();
              },
              child: const Text("#Focar"),
            ),
            TextField(
              focusNode: focusEmail,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'email',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (keyForm.currentState!.validate()) {
                    print("tá validado");
                  } else {
                    print("tá errado");
                  }
                },
                child: const Text("Registrar"))
          ],
        ),
      )),
    );
  }
}
