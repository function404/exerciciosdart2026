void main() {
  // Exercício 9: Map de Produtos
  Map<int, String> produtos = {
    1: 'Camisa do Internacional Oficial',
    2: 'Kunai de Borracha',
    3: 'Bandana da Folha',
    4: 'Action Figure Satoru Gojo',
    5: 'Chuteira',
  };

  // (1) Buscar um produto por ID
  void buscarProduto(int id) {
    if (produtos.containsKey(id)) {
      print('Produto encontrado: ${produtos[id]}');
    } else {
      print('Produto com ID $id não encontrado.');
    }
  }

  // (2) Listar todos os produtos
  void listarProdutos() {
    print('\nLista de Produtos:');
    produtos.forEach((id, nome) => print('ID: $id | Nome: $nome'));
  }

  // (3) Remover um produto por ID
  void removerProduto(int id) {
    produtos.remove(id);
    print('\nProduto com ID $id removido.');
  }

  buscarProduto(3);
  listarProdutos();
  removerProduto(5);
  listarProdutos();
}
