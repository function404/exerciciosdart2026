import 'dart:async';

Future<String> buscarDadosLentos() async {
  await Future.delayed(Duration(seconds: 5));
  return 'Dados carregados com sucesso!';
}

void main() async {
  print('Aguardando resposta da API...');
  try {
    final resultado = await buscarDadosLentos().timeout(Duration(seconds: 3));
    print(resultado);
  } on TimeoutException {
    print('A operação demorou muito! Limite de 3 segundos excedido.');
  } catch (err) {
    print('Ocorreu um erro inesperado: $err');
  }
}