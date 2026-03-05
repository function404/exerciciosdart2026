void main() {
  // Exercício 8: Lista de Objetos e Filtros
  List<String> frutas = [
    'abacaxi',
    'ameixa',
    'banana',
    'laranja',
    'manga',
    'maçã',
    'morango',
    'melancia',
    'melão',
    'pera',
    'uva',
  ];

  var frutasComM = frutas
    .where((f) => f.toLowerCase().startsWith('m'))
    .toList();
  print('Frutas com M: $frutasComM');

  var frutasMaiusculas = frutasComM.map((f) => f.toUpperCase()).toList();
  print('Frutas em Maiúsculas: $frutasMaiusculas');
}
