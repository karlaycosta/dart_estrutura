void main() {
  final List<List<String>> lista = [
//    0    1    2
    ['X', 'O', 'O'], // 0
    ['X', 'X', 'X'], // 1
    ['O', 'O', 'X'], // 2
  ];
  var vencedor = false;

  for (var i = 0; i < lista.length; i++) {
    vencedor = testaLinha(lista[i]);
    if (vencedor) {
      print('Vencedor na linha ${i + 1}');
    }
  }

  int contador = lista[0].length;
  for (var i = 0; i < contador; i++) {
    vencedor = testaLinha(pegaColuna(lista, i));
    if (vencedor) {
      print('Vencedor na coluna ${i + 1}');
    }
  }

  if (vencedor == false) {
    print('Sem vencedor!');
  }
}

List<String> pegaColuna(List<List<String>> lista, int coluna) {
  final res = <String>[];
  for (var x = 0; x < lista.length; x++) {
    res.add(lista[x][coluna]);
  }
  return res;
}

bool testaLinha(List lista) {
  String u = '';
  for (var i = 0; i < lista.length; i++) {
    if (i == 0) {
      u = lista[i];
      continue;
    }

    if (lista[i] == u) {
      u = lista[i];
    } else {
      u = 'diferentes!';
      break;
    }
  }
  return u != 'diferentes!';
}
