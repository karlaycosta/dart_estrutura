
void main() {
  final cifrado = criptografar('Mannaryelly', 3);
  print(cifrado);
  print(descriptografar(cifrado, 3));
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