import 'package:flutter/material.dart';

void main() {
  runApp(//--> metodo que ira iniciar o app
      MaterialApp(
    //--> widget que vem com várias configurações prontas
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

String img1 =
    'https://conteudo.imguol.com.br/c/noticias/1c/2022/05/24/imagem-criada-no-imagen-prototipo-do-google-que-cria-imagens-baseadas-em-texto-neste-caso-um-cachorro-corgi-andando-de-bicicleta-na-times-square-usando-oculos-de-sol-e-chapeu-de-praia-1653397634334_v2_1x1.jpg';
String img =
    'https://i.pinimg.com/236x/06/a9/fd/06a9fdb95004685bea8418b364912414.jpg';
String imgAux =
    'https://www.altoastral.com.br/media/uploads/legacy/2016/10/senhor-chapeu-mulheres-corpos-ilusao-otica-imagens.jpg';

class HomePage extends StatefulWidget {
  //--> Classe StatelessWidget
  @override
  Widget build(BuildContext context) {
    //--> metodo que ira buildar toda a view
    return Scaffold(
      //--> Esqueleto do app, sempre deve ter 1 para cada pagina
      appBar: AppBar(), //--> Widget do flutter para AppBar
      body: Center(
          //--> Widget para centralizar dentro do espaço
          child: Column(
        children: [
          const Text('Olá Mundo',
              style: TextStyle(
                  fontSize: 20)), //--> widget para mostrar um texto na tela
          const Text(
            'Olá Mundo2',
            style: TextStyle(color: Color.fromARGB(255, 168, 27, 27)),
          ),
          const SizedBox(height: 20),
          Image.network('$img'),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                img = img1;
              },
              child: const Text('Não clique aqui'))
        ],
      )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
