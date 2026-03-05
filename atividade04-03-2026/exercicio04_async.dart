Future<List<String>> buscarProdutos() async { await Future.delayed(Duration(seconds: 2)); return ['Produto A', 'Produto B', 'Produto C']; }
Future<List<String>> buscarcategorias() async { await Future.delayed(Duration(seconds: 2)); return ['Categoria A', 'Categoria B', 'Categoria C']; }
Future<List<String>> buscarPromocao() async { await Future.delayed(Duration(seconds: 2)); return ['Promo1']; }
Future<List<String>> buscarDestaque() async { await Future.delayed(Duration(seconds: 2)); return ['Dest1']; }

void main() async {
  final inicio = DateTime.now();
  print('Iniciando requisições...');

  final resultados = await Future.wait([
    buscarProdutos(),
    buscarcategorias(),
    buscarPromocao(),
    buscarDestaque()
  ]);

  final fim = DateTime.now();
  print('Tempo total: ${fim.difference(inicio).inSeconds} segundos');
  print('Resultados carregados com sucesso: $resultados');
}
