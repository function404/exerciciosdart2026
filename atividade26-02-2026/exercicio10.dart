void main() {
  // Exercício 10: Set e Operações de Conjunto
  Set<int> a = {1, 2, 3, 4, 5};
  Set<int> b = {4, 5, 6, 7, 8};

  print('União: ${a.union(b)}');
  print('Interseção: ${a.intersection(b)}');
  print('Diferença (A - B): ${a.difference(b)}');
  print('O número 3 está em A? ${a.contains(3)}');
}
