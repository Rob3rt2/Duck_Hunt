import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Joga extends StatefulWidget {
  @override
  _JogaEstado createState() => _JogaEstado();
}

class _JogaEstado extends State<Joga> {
  int _current = 0;

  List<Map<String, String>> imgList = [
    {
      'imageUrl': 'https://play-lh.googleusercontent.com/KWTbsZLqi1ukDWwnML695znoo64OeTCcPrDKM-64gaUnOzk9rRpMyQndGG15Y7Dvurki',
      'description':
          'Ele é um "amigo" do jogador ajudando o próprio, ele tem a função de espantar os patos de dentro do mato para que o jogador atinge o pato e faça a pontuação',
      'title': 'CACHORRO',
    },
    {
      'imageUrl': 'https://cdna.artstation.com/p/assets/images/images/044/509/520/large/samuel-preston-duck-from-duck-hunt.jpg?1640205455',
      'description':
          'São usados como "mira ao alvo" fazendo eles fugirem do cachorro, a função do jogador é eliminar os patos enquanto eles voam sem deixar que fujam!',
      'title': 'PATO',
    },
    {
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
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF63ADFF), // Cor de fundo personalizada para a AppBar
        title: Text('Jogabilidade'), 
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xFF63ADFF), // Cor de fundo hexadecimal #63ADFF
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Título dinâmico que muda conforme a imagem atual
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        imgList[_current]['title']!,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF111111),
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                    items: imgList.map((img) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
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
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        imgList[_current]['description']!,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF111111),
                        ),
                        textAlign: TextAlign.center,
                      ),
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

