// Exercício 6: Função de Alta Ordem
double executarOperacao(double a, double b, Function operacao) {
  return operacao(a, b);
}

void main() {
  double soma(double x, double y) => x + y;
  double multiplicacao(double x, double y) => x * y;

  print('Soma: ${executarOperacao(10, 5, soma)}');
  print('Multiplicação: ${executarOperacao(10, 5, multiplicacao)}');

  // Usando função anônima diretamente para divisão
  print('Divisão: ${executarOperacao(10, 5, (x, y) => x / y)}');
}
