class Produto {
  final String nome;
  final double preco;
  final String imagemUrl;

  const Produto({
    required this.nome,
    required this.preco,
    required this.imagemUrl,
  });

  static const List<Produto> itens = [
    Produto(
      nome: 'X-Bacon',
      preco: 25.0,
      imagemUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
    ),
    Produto(
      nome: 'Hambúrguer Clássico',
      preco: 18.0,
      imagemUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
    ),
    Produto(
      nome: 'Cheeseburger',
      preco: 20.0,
      imagemUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
    ),
    Produto(
      nome: 'Chicken Burger',
      preco: 22.0,
      imagemUrl: 'https://images.unsplash.com/photo-1562547256-a8ad2f6b1fa0?w=300',
    ),
    Produto(
      nome: 'Veggie Burger',
      preco: 19.0,
      imagemUrl: 'https://images.unsplash.com/photo-1585238341710-4dd0e06651aa?w=300',
    ),
    Produto(
      nome: 'Batata Frita',
      preco: 10.0,
      imagemUrl: 'https://images.unsplash.com/photo-1585238341710-4dd0e06651aa?w=300',
    ),
  ];
}
