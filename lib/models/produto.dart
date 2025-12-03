class Produto {
  final String id;
  final String nome;
  final double preco;
  final String imagemUrl;
  int quantidade;

  Produto({
    required this.id,
    required this.nome,
    required this.preco,
    required this.imagemUrl,
    this.quantidade = 1,
  });

  static List<Produto> gerarItens() {
    return [
      Produto(
        id: '1',
        nome: 'X-Bacon',
        preco: 25.0,
        imagemUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&h=500&fit=crop',
      ),
      Produto(
        id: '2',
        nome: 'Hambúrguer Clássico',
        preco: 18.0,
        imagemUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&h=500&fit=crop',
      ),
      Produto(
        id: '3',
        nome: 'Cheeseburger',
        preco: 20.0,
        imagemUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&h=500&fit=crop',
      ),
      Produto(
        id: '4',
        nome: 'Chicken Burger',
        preco: 22.0,
        imagemUrl: 'https://images.unsplash.com/photo-1562547256-a8ad2f6b1fa0?w=500&h=500&fit=crop',
      ),
      Produto(
        id: '5',
        nome: 'Veggie Burger',
        preco: 19.0,
        imagemUrl: 'https://images.unsplash.com/photo-1585238341710-4dd0e06651aa?w=500&h=500&fit=crop',
      ),
      Produto(
        id: '6',
        nome: 'Batata Frita',
        preco: 10.0,
        imagemUrl: 'https://images.unsplash.com/photo-1585238341710-4dd0e06651aa?w=500&h=500&fit=crop',
      ),
    ];
  }

  static final itens = gerarItens();
}
