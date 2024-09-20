import 'package:flutter/material.dart';

class Historia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF63ADFF), // Cor de fundo personalizada para a AppBar
        title: Text('História'), 
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Color(0xFF63ADFF), // Cor de fundo hexadecimal #63ADFF
          ),
          Center( // Centro do widget
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50), // Adiciona padding horizontal para espaçamento
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 27),
                  Text(
                    'Duck Hunt é um jogo do NES lançado em 1984 pela Nintendo. Sua interação era com a pistola Zapper, visto que pertencia à linha Light Gun. Também permitia outros modos de partida, incluindo acertar discos e dois patos ao mesmo tempo na tela.', // Texto do botão
                    textAlign: TextAlign.center, // Alinha o texto no centro
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold,                       
                      color: Color(0xFF111111),
                    ), 
                  ),
                  SizedBox(height: 20), // Espaçamento entre o texto e a imagem
                  Image.asset(
                    'img/cachorro2.png', // URL da imagem na internet
                    width: double.infinity,
                    height: 250, // Para preencher toda a largura disponível
                  ),
                ],
              ),
            ),        
          ),
        ],
      ),
    );
  }
}




