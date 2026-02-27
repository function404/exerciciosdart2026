void main() {
  // Exercício 3: Conversão de Tipos
  String numeroString = '42';
  
  int numeroInt = int.parse(numeroString);
  double numeroDouble = double.parse(numeroString);
  
  int outroNumero = 100;
  String convertidoParaString = outroNumero.toString();

  print('Original (String): $numeroString | Tipo: ${numeroString.runtimeType}');
  print('Para int: $numeroInt | Tipo: ${numeroInt.runtimeType}');
  print('Para double: $numeroDouble | Tipo: ${numeroDouble.runtimeType}');
  
  print('\nOriginal (int): $outroNumero | Tipo: ${outroNumero.runtimeType}');
  print('Para String: $convertidoParaString | Tipo: ${convertidoParaString.runtimeType}');
}