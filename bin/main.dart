
void main() {
  // firaode
  // final cifrado = criptografar('Mannaryelly', 3);
  // print(cifrado);
  // print(descriptografar(cifrado, 3));
  // print(String.fromCharCodes('Mannaryelly'.codeUnits.map((q) => q + 3)));
  late final List<int> lista = [];
  for (var i = 0; i < 10; i++) {
    lista[i] = i;
  }
  print(lista);
}

String criptografar(String palavra, int chave) {
  print('A palavra é $palavra e será deslocada $chave vezes.');
  final List<int> numeros = palavra.codeUnits.toList();
  for (var i = 0; i < numeros.length; i++) {
    print('A letra "${palavra[i]}" = ${numeros[i]} | ${numeros[i] + chave} = ${String.fromCharCode(numeros[i] + chave)}');
    numeros[i] = numeros[i] + chave;
  }
  return String.fromCharCodes(numeros);
}

String descriptografar(String palavra, int chave) {
  print('A palavra é $palavra e será deslocada $chave vezes.');
  final List<int> numeros = palavra.codeUnits.toList();
  for (var i = 0; i < numeros.length; i++) {
    print('A letra "${palavra[i]}" = ${numeros[i]} | ${numeros[i] - chave} = ${String.fromCharCode(numeros[i] - chave)}');
    numeros[i] = numeros[i] - chave;
  }
  return String.fromCharCodes(numeros);
}