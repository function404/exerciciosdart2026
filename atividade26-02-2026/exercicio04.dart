// Exercício 4: Função Tradicional e Arrow Function
double calcularArea(double largura, double altura) {
  return largura * altura;
}

double calcularAreaArrow(double l, double h) => l * h;

void main() {
  print('Área (Tradicional): ${calcularArea(5, 10)}');
  print('Área (Arrow Function): ${calcularAreaArrow(5, 10)}');
}