# 📱 Cardápio Digital

Aplicativo Flutter de cardápio digital implementando 5 conceitos obrigatórios da disciplina de Desenvolvimento Mobile.

## 🎯 Conceitos Implementados

1. ✅ **Stateless vs Stateful** - HomeScreen (Stateful) vs ProdutoItem (Stateless)
2. ✅ **Lista Dinâmica / GridView** - GridView.builder com 2 colunas e 6 produtos
3. ✅ **SizedBox** - Espaçamento consistente entre elementos
4. ✅ **Rota Nomeada** - Navegação com Navigator.pushNamed() e arguments
5. ✅ **BottomNavigationBar** - Menu inferior com 2 abas funcionais

## 🚀 Como Executar

```bash
# Instalar dependências
flutter pub get

# Rodar o aplicativo
flutter run

# Analisar código
flutter analyze
```

## 📁 Estrutura do Projeto

```
lib/
├── main.dart                          # Configuração app + rotas
├── models/
│   └── produto.dart                   # Modelo Produto + lista mockada
├── components/
│   └── produto_item.dart              # Stateless Widget - Card do produto
└── screens/
    ├── home_screen.dart               # Stateful Widget - Tela principal
    └── detalhes_screen.dart           # Tela de detalhes do produto
```

## 🔗 GitHub

Repository: https://github.com/riangrodrigues/Aula_Desenvolvimento_Mobile_CardapioDigital

Branch: main
