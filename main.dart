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

  // Você pode adicionar mais estratégias depois usando o mesmo padrão
}