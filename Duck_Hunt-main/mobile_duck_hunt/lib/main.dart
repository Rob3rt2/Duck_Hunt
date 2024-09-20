// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Historia.dart';
import 'Joga.dart';
import 'Fases.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: const Color(0xFF63ADFF), // Cor de fundo hexadecimal #63ADFF
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.03,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Duck',
                      style: TextStyle(
                        color: Color(0xFF111111),
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.network(
                      'https://play-lh.googleusercontent.com/RLcmvCN4JGBZqw1jxkCJbvVnbFtlJJBOnUigfOe48fDpZ1W3ftCLK-YZVWi5CjnH1ro',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://play-lh.googleusercontent.com/RLcmvCN4JGBZqw1jxkCJbvVnbFtlJJBOnUigfOe48fDpZ1W3ftCLK-YZVWi5CjnH1ro',
                      width: 70,
                      height: 70,
                    ),
                    const Text(
                      'Hunt',
                      style: TextStyle(
                        color: Color(0xFF111111),
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40), // Espaçamento entre os textos e os botões
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Historia(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFD3D331)), // Cor de fundo do botão
                    foregroundColor: MaterialStateProperty.all(const Color(0xFF111111)), // Cor do texto do botão
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 25, horizontal: 130)), // Padding interno do botão
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Borda arredondada
                    )),
                  ),
                  child: const Text(
                    'História', // Texto do botão
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold,                       
                      color: Color(0xFF111111),
                    ), 
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Joga(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFD43F3F)), // Cor de fundo do botão
                    foregroundColor: MaterialStateProperty.all(const Color(0xFF111111)), // Cor do texto do botão
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 25, horizontal: 100)), // Padding interno do botão
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Borda arredondada
                    )),
                  ),
                  child: const Text(
                    'Jogabilidade', // Texto do botão
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold,                       
                      color: Color(0xFF111111),
                    ), 
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Fases(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFF28300)), // Cor de fundo do botão
                    foregroundColor: MaterialStateProperty.all(const Color(0xFF111111)), // Cor do texto do botão
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 25, horizontal: 138.5)), // Padding interno do botão
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Borda arredondada
                    )),
                  ),
                  child: const Text(
                    'Fases', // Texto do botão
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold,                       
                      color: Color(0xFF111111),
                    ), 
                  ),
                ),
                const SizedBox(height: 50),
                Expanded(
                  child: Image.asset(
                    'img/cachorro.png', // URL da imagem na internet
                    width: double.infinity,
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
