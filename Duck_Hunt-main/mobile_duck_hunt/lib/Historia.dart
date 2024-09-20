// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HistoriaJogo{
  String ano;
  String desc;

  HistoriaJogo(this.ano, this.desc);
  void mudarAno(){
    if(ano == '1984'){
      ano = '2025';
      desc = 'Duck Hunt ganhou uma remasterização para os consoles da sony em 2024, com gráficos atualizados e gameplay otimizada para o novo console';
    }else{
      ano = '1984';
      desc = 'Duck Hunt é um jogo do NES lançado em 1984 pela Nintendo. Sua interação era com a pistola Zapper, visto que pertencia à linha Light Gun. Também permitia outros modos de partida, incluindo acertar discos e dois patos ao mesmo tempo na tela.';
    }
  }
}
HistoriaJogo h = HistoriaJogo('1984', 'Duck Hunt é um jogo do NES lançado em 1984 pela Nintendo. Sua interação era com a pistola Zapper, visto que pertencia à linha Light Gun. Também permitia outros modos de partida, incluindo acertar discos e dois patos ao mesmo tempo na tela.');

class Historia extends StatefulWidget {
  const Historia({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HistoriaEstado createState() => _HistoriaEstado();
}
  class _HistoriaEstado extends State<Historia>{
    @override
      Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF63ADFF), // Cor de fundo personalizada para a AppBar
          title: const Text('História'), 
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: const Color(0xFF63ADFF), // Cor de fundo hexadecimal #63ADFF
            ),
            Center( // Centro do widget
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50), // Adiciona padding horizontal para espaçamento
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed:(){
                        h.mudarAno();
                      }, 
                      icon: const Icon(Icons.arrow_forward_outlined)
                    ),
                    Text(
                      h.ano,
                      style: const TextStyle(
                        fontSize: 30, 
                        fontWeight: FontWeight.bold,                       
                        color: Color(0xFF111111),
                      ),
                    ),
                    const SizedBox(height: 27),
                    Text(
                      h.desc, // Texto do botão
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: const TextStyle(
                        fontSize: 26, 
                        fontWeight: FontWeight.bold,                       
                        color: Color(0xFF111111),
                      ), 
                    ),
                    const SizedBox(height: 20), // Espaçamento entre o texto e a imagem
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





