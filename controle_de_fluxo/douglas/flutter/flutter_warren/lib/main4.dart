import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(// runApp roda o app
      MaterialApp(
    // Widget primordial
    home: const HomePage(), // nome da homepage
    debugShowCheckedModeBanner: false, //tirar faixinha de debug da tela
    theme: ThemeData.dark()
        .copyWith(scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0)),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> links = [
    "https://www.floreseflores.com.br/wp-content/uploads/2012/05/Higanbana_closeup.jpg",
    "https://ae01.alicdn.com/kf/H2b9c91def5794651930b39282b8bacb4m/Higanbana-kit-de-acess-rios-para-cabelo-folheado-em-flor-para-iniciantes-cl-ssicos-artesanais.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/1/19/Lycoris_radiata_Higanbana_in_a_woods.jpg",
    "https://3.bp.blogspot.com/-GaWV4ido31w/W6jQ6fLOOJI/AAAAAAAAjY0/Q5FyqiHiFzMHLeAvMxIWO8h38ZQltpR8ACLcBGAs/s1600/Japa%25CC%2583oCulturaeTurismoi.co%253A%253AGonnoAkiMatsur%253AHiganbana.jpeg"
  ];
  String linkUsado =
      "https://imgs.casasbahia.com.br/1512225236/1xg.jpg?imwidth=500";
  var numerorandom = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //esqueleto do codigo do app, sempre tem 1
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Trocador de Imagem",
          style: TextStyle(
            fontSize: 15,
            color: const Color.fromARGB(255, 255, 255, 255),
            decoration: TextDecoration.combine(
              [
                TextDecoration.lineThrough,
                TextDecoration.overline,
                TextDecoration.underline
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          //widget pra centralizar os objetos dentro
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Aperte o botão para trocar a imagem",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 20, width: 100),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          linkUsado = links[numerorandom.nextInt(4)];
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 0, 0),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    child: const Text("Mudando Imagem"),
                  ),
                ],
              ),
              const SizedBox(height: 150),
              Image.network(
                linkUsado,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
