import 'dart:math';

void ordenacaoDecrescente(List<int> lista){
    lista.sort((b,a) => a.compareTo(b));
    print("Lista ordenada decrescentemente:");   
    print(lista);
}

List<int> gerarLista(){
    List<int> lista = List.filled(10, 0);   //Inicializa a lista com 0
    for(var i=0; i<10; i++){
        lista[i] = Random().nextInt(100);   //Insere um número aleatório entre 0 a 100 na lista a cada iteração
    }
    return lista;
}

void executar_estrategia(void Function(List<int>) estrategia){  //Esse parâmetro mostra o retorno e o parâmetro para a função passada
    List<int> lista = gerarLista();     //função para criar uma lista aleatória
    print("Lista aleatória gerada:");
    print(lista);
    //chamada da função passada por parâmetro
    estrategia(lista);
}

void main(){
    executar_estrategia(ordenacaoDecrescente);
    print()
    //Chamar a mesma função passando por parâmetro as outras funções...
    //coloque um print() depois de chamar a função para ter um espaço após a imprimir a lista 
}