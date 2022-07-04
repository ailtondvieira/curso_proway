import 'dart:html';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'dart:math';

void main(List<String> args) {
  runApp(// runApp roda o app
      MaterialApp(
    // Widget primordial
    home: HomePage(), // nome da homepage
    debugShowCheckedModeBanner: false, //tirar faixinha de debug da tela
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // fazendo tela sem estado, stateless
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
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Trocador de Imagem",
          style: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 255, 255, 255),
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
            children: [
              Row(
                children: [
                  const Text(
                    "Aperte o botão para trocar a imagem",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 20, width: 500),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        linkUsado = links[numerorandom.nextInt(4)];
                      });
                    },
                    child: Text("Mudando Imagem"),
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20)),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: 20),
              Image.network(
                linkUsado,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
