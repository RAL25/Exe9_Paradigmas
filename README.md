
# Organizando Listas

Repositório referente ao exercício 9 da disciplina de Paradigmas de Programação - Curso de Ciência da Computação


[![Linguagem Dart](https://img.shields.io/badge/Linguagem-Dart-%2309afac.svg)](https://dart.dev/docs)





## ⚙️ Funcionalidade do Código

Este projeto em Dart implementa três **estratégias de manipulação de listas numéricas**, com foco em ordenação e filtragem:

### 1. **Ordenação Decrescente**
A função `ordenacaoDecrescente` recebe uma lista de inteiros e a ordena do maior para o menor, utilizando o método `sort` com uma função de comparação personalizada:

```dart
lista.sort((b, a) => a.compareTo(b));
```

### 2. **Filtragem de Números Pares**
A função `filtrarPares` filtra e exibe apenas os números pares da lista, usando o método `where`:

```dart
List<int> pares = lista.where((numero) => numero % 2 == 0).toList();
```

### 3. **Ordenação Crescente Manual**
A função `ordenacaoCrescente` implementa manualmente um algoritmo de ordenação (sem usar `sort`). A estratégia usada é semelhante ao **Insertion Sort**, reorganizando os elementos do menor para o maior:

```dart
for (int i = 1; i < lista.length; i++) {
  // comparação e troca de elementos
}
```

Essa abordagem pode ser usada como exemplo de implementação de algoritmos básicos de ordenação.
## 👥 Contribuidores

| [@Isaías](https://github.com/isaias-vitor) | [@João Medina](https://github.com/MedinaJv) | [@Rian](https://github.com/RAL25)
|---|---|---|
| <img src="https://github.com/isaias-vitor.png" width="100"> | <img src="https://github.com/MedinaJv.png" width="100"> | <img src="https://github.com/RAL25.png" width="100"> |
