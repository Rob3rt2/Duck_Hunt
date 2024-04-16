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


      


























































































