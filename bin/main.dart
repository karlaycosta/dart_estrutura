
void main() {
  final text = 'Pedro';
  for (var i = 0; i < text.length; i++) {
    print(text[i]);
  }
  final lista = text.codeUnits;
  print(lista);
  print(String.fromCharCodes(lista));
}

String criptografar(String palavra, int chave) {
  return '?';
}

String descriptografar(String palavra, int chave) {
  return '?';
}