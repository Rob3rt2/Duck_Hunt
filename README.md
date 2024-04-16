# Duck_Hunt
Duck Hunt é um jogo do NES lançado em 1984 pela Nintendo. Sua interação era com a pistola Zapper, visto que pertencia a linha Light Gun. Também permitia outros modos de partida, incluindo acertar discos e dois patos ao mesmo tempo na tela.

# Códigos utilizados para a construção do app

 * Troca de Img
 ```javascript
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];


  PageView.builder(
            itemCount: 2,
            pageSnapping: true,
            itemBuilder: (context,pagePosition){
              return Container(
                margin: EdgeInsets.all(10),
                child: Image.network());
            })

  PageView.builder(
  itemCount: 2,
  pageSnapping: true,
  itemBuilder: (context,pagePosition){
  return Container(
    margin: EdgeInsets.all(10),
    child: Image.network(images[pagePosition]));
})
)
  // Faz a troca de imagens👍🏿

```
  
 * Add. Img
```javascript
const Image(
  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
)
  // Criacao de uma imagem 
 ```

 * Add. Button
```javascript
  IconButton(
    onPressed: () {},
    icon: const Icon(Icons.sunny),
  ),
    //Adiciona funcionalidade ao botão
```
 
 * Add. Text
```javascript
  Text(
    "Texto_App",
    style: TextStyle(
        fontFamily: 'Paytone one',
        fontSize: 96,
        fontWeight: FontWeight.bold
    ),
)
 //Estilizando o texto
```
# Telas_do_app

* Primeira tela
 Ira mostrar a tela de carregamento
<img src="![Carregamento](https://github.com/RuanPSilva/Duck_Hunt/assets/128431007/dc7aaa06-466e-42ee-b432-01e513a4954a)">

* Segunda tela
  Será mostrado a tela inicial com os botões de (Historia do jogo, Jogabilidade e Fases)
<img src="![Inicial](https://github.com/RuanPSilva/Duck_Hunt/assets/128431007/22860f63-5b9b-4093-965a-a8186a16f5f7)">

* Terceira tela
  Quando selecionado o Button "Hitoria" é selecionado, ele contara um pouco da historia do jogo
 <img src="![Historia](https://github.com/RuanPSilva/Duck_Hunt/assets/128431007/4d398a82-f05f-489d-b07e-b708956e13db)">

* Quarta tela
  Quando selecionado o Button "Jogabilidade" ele mostrara as diferentes formas de jogabilidades que o jogo tem
<img src="![Jogabilidade](https://github.com/RuanPSilva/Duck_Hunt/assets/128431007/da3b8715-88c6-4828-b766-067049673233)">

* Quinta tela
  Quando selecionado o Button "Fases" ele mostrara fotos das fases e tambem mostrara o cachorro e o pato e explicara um pouco deles
<img src="![Fases](https://github.com/RuanPSilva/Duck_Hunt/assets/128431007/846631ab-6865-487b-86c5-30b32b5d86c8)">
      


























































































