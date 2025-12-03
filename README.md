# 📱 Cardápio Digital

Aplicativo Flutter de cardápio digital implementando 5 conceitos obrigatórios da disciplina de Desenvolvimento Mobile.

## 🎯 Conceitos Implementados

1. ✅ **Stateless vs Stateful** 
   - `HomeScreen` extends `StatefulWidget` (gerencia índice da aba)
   - `ProdutoItem` extends `StatelessWidget` (renderiza dados imutáveis)

2. ✅ **Lista Dinâmica / GridView**
   - `GridView.builder` com 2 colunas
   - 6 produtos renderizados dinamicamente
   - Dados mockados em `Produto.itens`

3. ✅ **SizedBox**
   - Espaçamento consistente entre elementos
   - Usado entre imagem e texto, entre textos, entre seções

4. ✅ **Rota Nomeada**
   - Rotas: `'/'` (home) e `'/detalhes'` (detalhes)
   - Navegação com `Navigator.pushNamed()`
   - Passagem de objetos via `arguments`

5. ✅ **BottomNavigationBar**
   - 2 abas: "Cardápio" (GridView) e "Carrinho" (placeholder)
   - Ícones: `fastfood` e `shopping_cart`
   - Alternância dinâmica com `setState()`

## 🚀 Como Executar

```bash
# Instalar dependências
flutter pub get

# Rodar o aplicativo
flutter run

# Analisar código (sem erros)
flutter analyze
```

## 📁 Estrutura do Projeto

```
lib/
├── main.dart                          # Configuração app + rotas nomeadas
├── models/
│   └── produto.dart                   # Classe Produto + lista mockada (6 itens)
├── components/
│   └── produto_item.dart              # StatelessWidget - Card do produto (SizedBox, navegação)
└── screens/
    ├── home_screen.dart               # StatefulWidget - Tela principal (GridView, BottomBar)
    └── detalhes_screen.dart           # Tela de detalhes (recebe argumento do Produto)
```

## 🎨 Design

- **Tema:** Laranja (DeepOrange) - cores de comida
- **Layout:** Responsivo com GridView em 2 colunas
- **Cards:** Bordas arredondadas, sombra, imagens com tratamento de erro
- **Navegação:** Suave com transições padrão do Flutter

## 📊 Dados

- **Produtos:** 6 itens mockados (X-Bacon, Hambúrguer, Cheeseburger, Chicken Burger, Veggie Burger, Batata Frita)
- **Imagens:** URLs do Unsplash com fallback automático
- **Preços:** De R$ 10,00 a R$ 25,00

## 🔧 Arquitetura

- **Organização:** Pastas separadas por responsabilidade (models, components, screens)
- **State Management:** `setState()` para controle simples de estado
- **Padrões:** StatelessWidget para componentes reutilizáveis, StatefulWidget para telas com estado

## ✅ Status do Projeto

- ✅ Implementação completa dos 5 conceitos
- ✅ 0 erros de análise (`flutter analyze`)
- ✅ Código bem estruturado e legível
- ✅ Pronto para apresentação

## 🔗 GitHub

**Repository:** https://github.com/riangrodrigues/Aula_Desenvolvimento_Mobile_CardapioDigital

**Branch:** main

## 📝 Notas

Este projeto foi desenvolvido como atividade prática da disciplina de Desenvolvimento Mobile, demonstrando aplicação prática dos conceitos fundamentais de Flutter.
