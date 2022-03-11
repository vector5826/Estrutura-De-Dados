/// Estruturas de Listas em Dart
/// Listas: são estruturas de dados que permitem armazenar dados
/// de forma sequencial.
/// São indicadas por um par de colchetes '[]'
import 'dart:math';

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

  var nomes = <String>['Ana', 'Luciana', 'Edson', 'Pedro', 'Tina'];
  print(nomes);

  // nomes.removeWhere((String nome) => nome == 'Ana');
  // print(nomes);
/*
  //Remover mais de um item diferente
  nomes.removeWhere((String n) => n == 'Pedro' || n == 'Tina');
  print(nomes);

  nomes.removeWhere((String n) => ['Edson', 'Pedro'].contains(n));
  print(nomes);

  nomes.removeWhere((String n) => ['Ana'].contains(n));
  print(nomes);
*/

  //Alterar dados em  uma lista
  //Basta indicar o índice e atribuir o novo valor
  nomes[0] = 'Pica Pau';
  print(nomes);

  print(nomes..sort());
  print(nomes..reversed);
  print(nomes);

  //outro método de ordenação
  nomes.sort((x, y) => x.compareTo(y));
  print(nomes);

  //outro método de ordenação(decrecente)
  nomes.sort((y, x) => x.compareTo(y));
  print(nomes);

  //mesclagem de listas
  //Funcinal - altera o estado das listas
  var x = ['Casa', 'Tapete'];
  var y = ['Marcelo', 'Prego'];
  var saida = [x, y].expand((b) => b).toList();
  print(saida);
  print(x);
  print(y);

  ///Atividade - dica: import 'dart:math'
  ///Criar uma lista com 50 números aleatórios
  ///1 - Excluir apenas os que forem menores que 10
  ///2 - Verificar se o número 77 está na lista
  ///3 - Criar uma lista com 10 números negativos e incorporar a lista (1)
  ///4 - mostrar o conteúdo da lista em ordem decresente


  var rnd = Random();
  var numeros = List.generate(50, (_) => rnd.nextInt(101));
  print(numeros);

  // remover menores que 10
  numeros.removeWhere((int e) => e < 10);

  // Será que 77 está na lista?
  print(numeros.contains(77));

  var negativos = [-1, -13, -9, -16, -30, -87, -4, -5, -3, -1];
  numeros.addAll(negativos);
  print(numeros);

  // ordem decrescente
  numeros.sort((y, x) => x.compareTo(y));
  print(numeros);
}
