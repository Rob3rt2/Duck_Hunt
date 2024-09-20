// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobile_duck_hunt/elementos.dart';

class Joga extends StatefulWidget {
  const Joga({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JogaEstado createState() => _JogaEstado();
}

class _JogaEstado extends State<Joga> {
  int _current = 0;
  Elementos e = Elementos('Modos', [{
          'imageUrl': 'img/modoA.png',
          'description': 'O objetivo do modo A é acertar todos os patos, sem deixar nenhum fugir. Aparece somente um pato por vez, e o objetivo do jogador é atirar no pato, sem deixar ele fugir. O limite de tiros por pato é de três tiros e, se o jogador errar os três, ele vai consequentemente fugir do jogador. São vários níveis. À medida que o jogador consegue passar deles, os patos vão voar cada vez mais rápido, e o jogo vai ficar cada vez mais difícil.',
          'title': 'MODO A',
        },
        {
          'imageUrl': 'img/modoB.png',
          'description': 'O modo B é semelhante ao A, com a diferença de haver dois patos por vez, que aparecem simultaneamente. O jogador tem que acertar os dois sem errar, para isso ele só pode errar um tiro; errando dois, um dos patos com certeza irá fugir. Assim como no A, a medida em que o jogador conclui os níveis, o jogo vai ficando cada vez mais desafiador, os patos vão ficando cada vez mais ágeis, e assim fica mais difícil capturá-los. A pontuação e igual ao Modo A',
          'title': 'MODO B',
        },
        {
          'imageUrl': 'img/modoC.png',
          'description': "O modo C, ao contrário do A e do B, consiste em pratos, jogados de dois em dois. O objetivo é acertar os dois pratos, sem errar nenhuma vez. É um modo mais difícil, pois os pratos são lançados para perto e para longe, e voam rápido, além deles serem bem menores que os patos, e assim como nos modos A e B, são três tiros por prato.",
          'title': 'MODO C',
        },], 1);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF63ADFF), // Cor de fundo personalizada para a AppBar
        title: const Text('Jogabilidade'), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Stack(
        children: [
          Container(
            color: const Color(0xFF63ADFF), // Cor de fundo hexadecimal #63ADFF
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Título dinâmico que muda conforme a imagem atual
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: (){
                        e.mudarTema(e.elementoAtual - 1);
                      },
                     icon: const Icon(Icons.arrow_back_outlined),
                    ),
                    Text(e.tema),
                    IconButton(
                      onPressed: (){
                        e.mudarTema(e.elementoAtual + 1);
                      },
                     icon: const Icon(Icons.arrow_forward_outlined),
                    ),
                  ]
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      e.lista[_current]['title']!,
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF111111),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.6,
                      initialPage: _current,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                    items: e.lista.map((img) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image.network(
                              img['imageUrl']!,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      e.lista[_current]['description']!,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF111111),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

