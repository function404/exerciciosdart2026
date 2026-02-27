// Exercício 2: const vs final na Prática
void main() {
  const pi = 3.14159;
  final dataAtual = DateTime.now();

  print('PI: $pi');
  print('Data Atual: $dataAtual');

  // Documentação dos erros:
  // pi = 3.14; 
  // Erro: Constant variables can't be assigned a value. 'const' exige valor em tempo de compilação e é imutável.
  
  // dataAtual = DateTime.now(); 
  // Erro: The final variable 'dataAtual' can only be set once. 'final' permite receber valor em tempo de execução, mas não pode ser alterado depois.
}