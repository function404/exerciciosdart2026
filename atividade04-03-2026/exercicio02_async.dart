import 'dart:math';

Future<String> buscarUsuario() async {
  await Future.delayed(Duration(seconds: 2));

  if (Random().nextBool()) {
    throw Exception('Erro ao buscar usuário. Falha a conexão com o servidor.');
  }

  return 'Lincoln N Mezzalira';
}

void main() async {
  try {
    String nome = await buscarUsuario();
    print('O nome do usuário é: $nome');
  } catch (err) {
    print('Ocorreu um erro: $err');
  }
}