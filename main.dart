import 'dart:math';

// Estratégia 1: Ordenação decrescente
void ordenacaoDecrescente(List<int> lista) {
  lista.sort((b, a) => a.compareTo(b));
  print("Lista ordenada decrescentemente:");
  print(lista);
}

// Estratégia 2: Filtrar apenas os números pares
void filtrarPares(List<int> lista) {
  List<int> pares = lista.where((numero) => numero % 2 == 0).toList();
  print("Números pares:");
  print(pares);
}

// Estratégia 3: Ordenação crescente
List<int> ordenacaoCrescente(List<int> lista) {
  for (int i = 1; i < lista.length; i++) {
    int indiceAtual = i;
    for (int j = i - 1; j >= 0; j--) {
      if (lista[i] < lista[j]) {
        int aux = lista[i];
        lista[i] = lista[j];
        lista[j] = aux;
        --i;
      }
    }
    i = indiceAtual;
  }
  return lista;
}

// Função para gerar lista aleatória
List<int> gerarLista() {
  List<int> lista = List.filled(10, 0);
  for (var i = 0; i < 10; i++) {
    lista[i] = Random().nextInt(100);
  }
  return lista;
}

// Função principal que executa qualquer estratégia sobre a lista
void executarEstrategia(void Function(List<int>) estrategia) {
  List<int> lista = gerarLista();
  print("Lista aleatória gerada:");
  print(lista);
  estrategia(lista); // Aplica a estratégia
}

void main() {
  // Executando as estratégias
  executarEstrategia(ordenacaoDecrescente);
  print(""); // Espaço visual

  executarEstrategia(filtrarPares);
  print(""); // Espaço visual

  executarEstrategia(ordenacaoCrescente);
  print(""); // Espaço visual

  // Você pode adicionar mais estratégias depois usando o mesmo padrão
}
