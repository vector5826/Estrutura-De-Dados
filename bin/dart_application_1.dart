/// Estruturas de Listas em Dart
/// Listas: são estruturas de dados que permitem armazenar dados
/// de forma sequencial.
/// São indicadas por um par de colchetes '[]'
void main() {
  // declaração de uma lista do tipo 'string' (texto)
  // Vamos usar o símbolo "<>" diamond
  //                          0          1         2
  var produtos = <String>['Cenoura', 'Batata', 'Melão'];
  print(produtos);

  // acessando elementos pelo índice
  print(produtos[0]); // índice 0
  print(produtos[1]); // índice 1
  print(produtos[2]); // índice 2

  // verificando o tamanho da lista
  print('Número de elementos na lista: ${produtos.length}');

  // usando uma estrutura de loop
  // for (tradicional)
  for (var i = 0; i < produtos.length; i++) {
    print('Índice: $i => ${produtos[i]}');
  }

  // for in (mais bacaninha)
  // esse laço percorre a lista toda
  for (var produto in produtos) {
    print('Índice: ${produtos.indexOf(produto)} => $produto');
  }

  /// Vamos treinar
  /// Criar uma lista com 10 elementos e mostrar apenas o valor
  /// dos índices pares
  /// var desafio = <int>[1,2,3,4,5,6,7,8,9,10];

  // Usando o for tradicional
  //                  0 1 2 3 4 5 6 7 8 9
  var desafio = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var i = 0; i < desafio.length; i++) {
    if (i % 2 == 0) {
      print('Índice: $i => ${desafio[i]}');
    }
  }

  // Usando o for..in
  for (var num in desafio) {
    if (desafio.indexOf(num) % 2 == 0) {
      print(num);
    }
  }

  var lista = <String>[];
  print(lista);

  // Adicionando valores à uma lista
  // .add() - um elemento de cada vez no FINAL da lista
  lista.add('Banana');
  lista.add('Pêra');
  print(lista);

  // adicionando em uma posição específica
  // .insert(index, value)
  lista.insert(1, 'Melancia');
  print(lista);

  // adicionando vários ao mesmo tempo
  // Modo 1: ...add(value)..add(value)
  lista
    ..add('Cenoura')
    ..add('Tomate')
    ..add('Cebola');
  print(lista);

  // Modo 2: addAll([values])
  lista.addAll(['Jaca', 'Maracujá', 'Mandioca']);
  print(lista);

  // Modo 3: insertAll(index, [values])
  lista.insertAll(0, ['Alface', 'Pimenta']);
  print(lista);

  // Removendo elementos de uma lista
  // Por valor
  lista.remove('Mandioca');
  print(lista);

  // Por índice
  lista.removeAt(1); // pimenta
  print(lista);

  // O último
  lista.removeLast();
  print(lista);

  // por intervalo (não inclusivo - último elemento não entra)
  lista.removeRange(1, 3);
  print(lista);

  // Na próxima aula
  // Remoção por lambda, ordenação, valores repetidos
  // contains, pesquisas, mesclagem (imperativa e funcional)
}
