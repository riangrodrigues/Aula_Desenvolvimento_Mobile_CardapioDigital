# 🎥 Cardápio Digital - Roteiro Detalhado para Gravação do Vídeo

## 📋 Informações Gerais

**Dupla:** [Nome 1] e [Nome 2]  
**Projeto:** Sistema de Cardápio Digital (Visão Cliente)  
**Tecnologia:** Flutter  
**Duração Total do Vídeo:** ~10 minutos  

---

## ✅ Checklist de Implementação

- [x] **Passo A:** Modelo de Dados (`lib/models/produto.dart`)
- [x] **Passo B:** Estrutura de Navegação com Rotas Nomeadas (`lib/main.dart`)
- [x] **Passo C:** Tela Principal Stateful com BottomNavigationBar (`lib/screens/home_screen.dart`)
- [x] **Passo D:** Componente do Produto com SizedBox (`lib/components/produto_item.dart`)
- [x] **Passo E:** Navegação para Detalhes com Arguments (`lib/screens/detalhes_screen.dart`)

---

# 🎬 ROTEIRO DE GRAVAÇÃO PASSO A PASSO

## PARTE 1: INTRODUÇÃO (30 segundos)

**O que dizer:**
> "Olá, somos a dupla [Nome 1] e [Nome 2]. Este é nosso projeto de Cardápio Digital desenvolvido em Flutter. Vamos mostrar como implementamos os 5 conceitos obrigatórios: Stateless vs Stateful, Lista Dinâmica, GridView, SizedBox, Rota Nomeada e BottomNavigationBar."

**O que fazer:**
- Apresentar a dupla na câmera
- Manter tom profissional e claro

---

## PARTE 2: DEMONSTRAÇÃO DO APP (1 minuto)

### 2.1 - Tela Inicial (20 segundos)

**O que dizer:**
> "Aqui temos a tela inicial do aplicativo com o BottomNavigationBar na parte inferior. Há dois menus: 'Cardápio' (ativo) e 'Carrinho'. Vemos que o GridView exibe 6 produtos em 2 colunas."

**O que fazer:**
1. Abrir o app no emulador
2. Mostrar a tela inicial com todos os produtos visíveis
3. Apontar para o BottomNavigationBar com o dedo/cursor

---

### 2.2 - Interação com a Lista (20 segundos)

**O que dizer:**
> "Quando rolamos a tela, podemos ver que a lista é dinâmica e renderiza todos os 6 produtos. Cada card mostra a imagem do prato, nome e preço. Vejam que temos espaçamento entre os elementos graças ao SizedBox."

**O que fazer:**
1. Fazer scroll na lista de produtos
2. Mostrar vários cards completamente
3. Destacar visualmente o espaçamento entre imagem e texto

---

### 2.3 - Navegação para Detalhes (20 segundos)

**O que dizer:**
> "Ao clicar em um produto, usamos rotas nomeadas para navegarmos para a tela de detalhes. O produto selecionado é passado como argumento através do Navigator. Vejam que temos uma imagem maior, descrição completa e um botão para adicionar ao carrinho."

**O que fazer:**
1. Clicar em um produto (qualquer um)
2. Esperar a tela de detalhes abrir
3. Mostrar todos os elementos (imagem, preço, descrição, botão)
4. Clicar no botão "Adicionar ao Carrinho" (mostra SnackBar)

---

### 2.4 - BottomNavigationBar (20 segundos)

**O que dizer:**
> "Se clicarmos no menu 'Carrinho', ele muda de aba. Note que a aba está ativa porque usamos Stateful na HomeScreen para controlar qual índice está selecionado. Quando clicamos, setState() é chamado e a UI se reconstrói mostrando a tela do carrinho."

**O que fazer:**
1. Clicar na aba "Carrinho" do BottomNavigationBar
2. Mostrar a tela do carrinho vazia
3. Clicar de volta em "Cardápio"
4. Mostrar que volta ao grid

---

## PARTE 3: EXPLICAÇÃO DO CÓDIGO - CONCEITO 1 (2 minutos)

### 3.1 - STATELESS vs STATEFUL

**Arquivo a mostrar:** `lib/screens/home_screen.dart` e `lib/components/produto_item.dart`

**O que dizer:**

#### 3.1.1 - HomeScreen (Stateful)
> "A HomeScreen é um StatefulWidget. Por quê? Porque precisa manter um estado interno: o índice da aba selecionada no BottomNavigationBar. Vejam que temos `int _selectedIndex = 0` na classe State. Quando o usuário clica em uma aba, chamamos `setState()` para atualizar esse valor e reconstruir a interface."

**O que mostrar:**
```dart
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;  // ← ESTADO MUTÁVEL

  @override
  Widget build(BuildContext context) {
    // ...
  }
}
```

**Explicação adicional:**
> "Quando fazemos `setState(() { _selectedIndex = index; })` no callback `onTap` do BottomNavigationBar, Flutter reconstrói apenas o widget que precisa mudar. Isso é eficiente porque não reconstruímos o app inteiro."

---

#### 3.1.2 - ProdutoItem (Stateless)
> "Já o ProdutoItem é um StatelessWidget. Por quê? Porque ele não mantém nenhum estado interno. Ele apenas recebe um Produto via construtor e renderiza o Card. Os dados vêm de fora, via parâmetro. Como não há mudanças internas, é mais leve e eficiente."

**O que mostrar:**
```dart
class ProdutoItem extends StatelessWidget {
  final Produto produto;  // ← RECEBE DADOS DO PAI

  const ProdutoItem({
    super.key,
    required this.produto,
  });

  @override
  Widget build(BuildContext context) {
    // Apenas renderiza, sem estado
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/detalhes',
          arguments: produto,
        );
      },
      child: Card(
        // ...
      ),
    );
  }
}
```

**Resumo:**
> "Em resumo: Stateful quando há mudanças internas no widget (como a aba do BottomBar), Stateless quando é apenas uma representação estática de dados recebidos."

---

## PARTE 4: EXPLICAÇÃO DO CÓDIGO - CONCEITO 2 (1 minuto)

### 4.1 - LISTA DINÂMICA / GRIDVIEW

**Arquivo a mostrar:** `lib/models/produto.dart` e `lib/screens/home_screen.dart`

**O que dizer:**

#### 4.1.1 - Modelo de Dados
> "Primeiro, criamos o modelo de dados em `models/produto.dart`. Temos uma classe Produto com 3 atributos: nome, preço e URL da imagem. Importante: temos uma lista estática chamada `Produto.itens` que simula dados do banco de dados, sem precisar de API."

**O que mostrar:**
```dart
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
      imagemUrl: 'https://...',
    ),
    // ... mais 5 produtos
  ];
}
```

---

#### 4.1.2 - GridView.builder
> "Na HomeScreen, usamos um GridView.builder para renderizar a lista dinamicamente. O `itemCount` recebe `Produto.itens.length` (6 produtos), e o `itemBuilder` cria um ProdutoItem para cada índice. Com `crossAxisCount: 2`, temos 2 colunas."

**O que mostrar:**
```dart
GridView.builder(
  padding: const EdgeInsets.all(16),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,  // 2 colunas
    childAspectRatio: 0.75,
    crossAxisSpacing: 12,
    mainAxisSpacing: 12,
  ),
  itemCount: Produto.itens.length,  // 6 produtos
  itemBuilder: (context, index) {
    return ProdutoItem(
      produto: Produto.itens[index],  // Passa cada produto
    );
  },
);
```

**Explicação adicional:**
> "Isso torna a lista dinâmica: se adicionássemos mais produtos a `Produto.itens`, o GridView renderizaria automaticamente. O `itemBuilder` é chamado apenas para os itens visíveis na tela, economizando memória."

---

## PARTE 5: EXPLICAÇÃO DO CÓDIGO - CONCEITO 3 (1 minuto)

### 5.1 - SIZEDBOX (ESPAÇAMENTO E LAYOUT)

**Arquivo a mostrar:** `lib/components/produto_item.dart`

**O que dizer:**

> "O SizedBox é um widget simples mas essencial para criar espaçamento consistente. Aqui no ProdutoItem, usamos SizedBox com `height: 8` entre o texto do nome e o texto do preço. Isso evita que os textos fiquem muito colados, melhorando a legibilidade e a aparência visual."

**O que mostrar:**
```dart
Padding(
  padding: const EdgeInsets.all(12.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        produto.nome,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8),  // ← ESPAÇAMENTO
      Text(
        'R\$ ${produto.preco.toStringAsFixed(2)}',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.deepOrange[700],
        ),
      ),
    ],
  ),
)
```

**Explicação adicional:**
> "Além disso, usamos SizedBox em vários lugares do projeto: entre a imagem e o texto no card (height: 10), e entre elementos na tela de detalhes (height: 16, 24, 32). Isso cria uma hierarquia visual clara e um layout profissional. Sem SizedBox, teríamos de usar Container vazio ou Spacer, o que é menos eficiente."

---

## PARTE 6: EXPLICAÇÃO DO CÓDIGO - CONCEITO 4 (1 minuto 30 segundos)

### 6.1 - ROTA NOMEADA

**Arquivo a mostrar:** `lib/main.dart`, `lib/components/produto_item.dart`, `lib/screens/detalhes_screen.dart`

**O que dizer:**

#### 6.1.1 - Configuração de Rotas
> "No arquivo main.dart, definimos as rotas nomeadas do app. Temos a rota inicial '/' que leva para HomeScreen, e a rota '/detalhes' que leva para DetalhesScreen. Isso é melhor do que passar widgets diretamente porque fica organizado e fácil de manter."

**O que mostrar:**
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio Digital',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detalhes': (context) => const DetalhesScreen(),
      },
    );
  }
}
```

---

#### 6.1.2 - Navegação com Arguments
> "Quando o usuário clica em um produto, chamamos `Navigator.pushNamed()` passando a rota e também o objeto Produto como argumento. Isso permite que a tela de detalhes acesse os dados do produto que foi clicado."

**O que mostrar:**
```dart
// Em produto_item.dart
GestureDetector(
  onTap: () {
    Navigator.of(context).pushNamed(
      '/detalhes',
      arguments: produto,  // ← PASSA O OBJETO
    );
  },
  child: Card(/* ... */),
)
```

---

#### 6.1.3 - Recebimento de Arguments
> "Na DetalhesScreen, recuperamos o argumento usando `ModalRoute.of(context).settings.arguments`. Fazemos um cast para Produto e pronto: temos acesso a todos os dados do produto selecionado."

**O que mostrar:**
```dart
// Em detalhes_screen.dart
class DetalhesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final produto = ModalRoute.of(context)!.settings.arguments as Produto;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Produto'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(produto.imagemUrl),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(produto.nome),
                  Text('R\$ ${produto.preco.toStringAsFixed(2)}'),
                  // ...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Resumo:**
> "As rotas nomeadas tornaram a navegação limpa, tipada e reutilizável. É um padrão muito usado em apps profissionais."

---

## PARTE 7: EXPLICAÇÃO DO CÓDIGO - CONCEITO 5 (1 minuto)

### 7.1 - BOTTOMNAVIGATIONBAR

**Arquivo a mostrar:** `lib/screens/home_screen.dart`

**O que dizer:**

> "O BottomNavigationBar é um widget que coloca um menu de abas na parte inferior da tela. Aqui temos duas abas: 'Cardápio' (com ícone de prato) e 'Carrinho' (com ícone de carrinho de compras). A aba ativa é controlada pelo índice `_selectedIndex`."

**O que mostrar:**
```dart
bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,  // Índice da aba ativa
  onTap: (index) {
    setState(() {
      _selectedIndex = index;  // Atualiza o índice
    });
  },
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.fastfood),
      label: 'Cardápio',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Carrinho',
    ),
  ],
)
```

---

#### 7.1.2 - Lógica Condicional no Body
> "No body do Scaffold, usamos uma expressão ternária para alternar entre GridView (quando _selectedIndex == 0) e a tela do carrinho (quando _selectedIndex == 1). Como atualizamos _selectedIndex via setState(), a interface se reconstrói mostrando o conteúdo correto."

**O que mostrar:**
```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Cardápio Digital'),
      backgroundColor: Colors.deepOrange,
    ),
    body: _selectedIndex == 0
        ? _buildCardapioGrid()  // GridView
        : _buildCarrinhoScreen(),  // Tela vazia
    bottomNavigationBar: BottomNavigationBar(
      // ... configuração acima
    ),
  );
}
```

**Resumo:**
> "O BottomNavigationBar, combinado com Stateful e setState(), cria uma experiência fluida onde o usuário pode navegar entre abas sem perder o estado do app."

---

## PARTE 8: ESTRUTURA E ORGANIZAÇÃO (30 segundos)

**O que dizer:**

> "A organização do projeto segue boas práticas: separamos a lógica em pastas específicas. Os modelos de dados em `/models`, os componentes reutilizáveis em `/components`, e as telas completas em `/screens`. Isso facilita a manutenção e o reuso de código."

**O que mostrar:**
```
lib/
├── main.dart
├── models/
│   └── produto.dart
├── components/
│   └── produto_item.dart
└── screens/
    ├── home_screen.dart
    └── detalhes_screen.dart
```

---

## PARTE 9: CONCLUSÃO (30 segundos)

**O que dizer:**

> "Implementamos com sucesso os 5 conceitos obrigatórios:
> - **Stateless vs Stateful:** HomeScreen é Stateful, ProdutoItem é Stateless.
> - **Lista Dinâmica / GridView:** GridView.builder renderiza 6 produtos dinamicamente.
> - **SizedBox:** Usado para espaçamento consistente entre elementos.
> - **Rota Nomeada:** Navegação limpa com arguments entre telas.
> - **BottomNavigationBar:** Menu inferior com 2 abas funcionais.
>
> O código está versionado no GitHub e pronto para produção. Muito obrigado!"

**O que fazer:**
1. Mostrar o nome da dupla novamente
2. Opcional: mostrar o repositório GitHub na tela
3. Encerrar profissionalmente

---

# 📝 Dicas Finais para a Gravação

## Antes de Gravar

1. **Limpe a tela:** Feche abas e aplicações desnecessárias
2. **Aumente a fonte:** Deixe o código mais legível (Ctrl + scroll)
3. **Teste o app:** Certifique-se de que tudo funciona sem bugs
4. **Prepare o roteiro:** Tenha este documento aberto em outro monitor/aba
5. **Áudio:** Use um microfone bom, em local silencioso

## Durante a Gravação

- **Fale claro e pausadamente:** Deixe tempo para o espectador absorver
- **Use cursor/mouse:** Aponte para o código enquanto explica
- **Alternar entre app e código:** Não fique 5 min só mostrando código
- **Não tenha pressa:** Pausas naturais tornam a explicação melhor
- **Teste do início:** Grave tudo e assista antes de entregar

## Após a Gravação

- Edite se necessário (corte partes confusas)
- Verifique áudio e vídeo
- Envie com boa qualidade (Full HD 1080p é ideal)
- Inclua link do GitHub na descrição

---

## 🎯 Resumo Visual dos 5 Conceitos

| Conceito | Arquivo | Elemento Chave |
|----------|---------|----------------|
| **Stateful** | `home_screen.dart` | `int _selectedIndex` + `setState()` |
| **Stateless** | `produto_item.dart` | `final Produto produto` |
| **GridView** | `home_screen.dart` | `GridView.builder(crossAxisCount: 2)` |
| **SizedBox** | `produto_item.dart` | `SizedBox(height: 8)` |
| **Rota Nomeada** | `main.dart` | `routes: { '/': ..., '/detalhes': ... }` |
| **BottomBar** | `home_screen.dart` | `BottomNavigationBar(items: [...])` |

---

**Boa gravação! 🎬✨**
