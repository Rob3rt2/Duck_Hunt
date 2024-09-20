import 'package:mobile_duck_hunt/personagens.dart';
class Elementos{
  String tema;
  List<Map<String, String>> lista;
  int elementoAtual;

  Elementos(this.tema, this.lista, this.elementoAtual);

  String mudarTema(int temas){
    if(temas > 3 ){
      temas = 1;
    }else if(temas < 1){
      temas = 3;
    }
    if(temas == 1){
      tema = 'Modos';
    }else if(temas == 2){
      tema = 'Personagens';
    }else if(temas == 3){
      tema = 'HUD';
    }
    mudarElemento();
    return tema;
  }

  mudarElemento(){
    if(tema == 'Modos'){
      lista = [
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
    }else if(tema == 'Personagens'){
      Personagens p = Personagens('nome', [{'imageUrl': 'img/modoB.png',
          'description': 'São usados como "Mira ai alvo" fazendo eles fugirem do cachorro, a função do jogador é eliminar os patos antes que fujam.',
          'title': 'Pato',}], 'desc', 'imagem');
      lista = p.mudarPersonagem();
    }else if(tema == 'HUD'){
      lista = [
        {
          'imageUrl': 'img/hud1.png',
          'description': 'Indica quantos patos foram abatidos na fase. Indica principalmente a progressão no estágio.',
          'title': 'Patos Abatidos',
        },
        {
          'imageUrl': 'img/hud2.png',
          'description': 'Indica a pontuação atual do jogador.',
          'title': 'Score',
        },
        {
          'imageUrl': 'img/hud3.png',
          'description': "Indica quantos disparos restantes o jogador possui para acertas o pato atual.",
          'title': 'Shots',
        },
      ];
    }
  }
}