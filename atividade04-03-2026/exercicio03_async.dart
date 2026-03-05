Future<String> atenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'token_super_ultra_mega_blaster_secreto';
}

Future<Map<String, dynamic>> buscarPerfil(String token) async {
  await Future.delayed(Duration(seconds: 1));

  return {'id': 101, 'nome': 'Lincoln N Mezzalira'};
}

Future<List<String>> buscarPedidos(int userId) async {
  await Future.delayed(Duration(seconds: 1));

  return ['#Pedido001', '#Pedido002'];
}

void main() async {
  try {
    final token = await atenticar();
    print('1. Autenticado com token: $token');

    final perfil = await buscarPerfil(token);
    print('2. Perfil do carregado: ${perfil['nome']}');

    final pedidos = await buscarPedidos(perfil['id']);
    print('3. Pedidos do encontrados: $pedidos');

  } catch (err) {
    print('Ocorreu um erro: $err');
  }
}