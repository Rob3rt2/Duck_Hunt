class Personagens{
  String nome;
  String desc;
  String imagem;
  List<Map<String, String>> lista;

  Personagens(this.nome, this.lista, this.desc, this.imagem);
  List<Map<String, String>> mudarPersonagem(){
    return lista = [
        {
          imagem = 'imageUrl': 'img/cachorro2.png',
          desc = 'description': 'Neste jogo, ele não é um personagem selecionável, mas ele tem sua importância no game, já que ele farejava os animais e os espantava para que o player tivesse a oportunidade de abatê-los com sua arma.',
          nome = 'title': 'Cachorro',
        },
        {
          imagem = 'imageUrl': 'img/modoB.png',
          desc = 'description': 'São usados como "Mira ai alvo" fazendo eles fugirem do cachorro, a função do jogador é eliminar os patos antes que fujam.',
          nome = 'title': 'Pato',
        },
      ];
  }
}