import 'dart:math';

void ordenacaoDecrescente(List<int> lista){
    lista.sort((b,a) => a.compareTo(b));
    print("Lista ordenada decrescentemente:");   
    print(lista);
}

void executar_estrategia(List<int> lista, var estrategia){
    if(estrategia==1){
        ordenacaoDecrescente(lista);
    }
}

List<int> gerarLista(){
    List<int> lista = List.filled(10, 0);
    for(var i=0; i<10; i++){
        lista[i] = Random().nextInt(100);
    }
    return lista;
}

void main(){
    var estrategia = 1;
    List<int> lista = gerarLista();
    print("Lista aleatória gerada:");
    print(lista);
    executar_estrategia(lista, estrategia);
}