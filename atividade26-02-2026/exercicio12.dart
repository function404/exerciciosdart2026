// Exercício 12: Construtores Nomeados
class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  // Construtor 1: Sem estoque
  Produto.semEstoque(this.nome, this.preco) : estoque = 0;

  // Construtor 2: Promoção (20% de desconto)
  Produto.promocao(this.nome, double precoBase, this.estoque)
    : preco = precoBase * 0.8;

  void exibirInfo() {
    print('Produto: $nome | R\$ $preco | Estoque: $estoque unidades');
  }
}

void main() {
  var pEsgotado = Produto.semEstoque('Camisa Retrô Inter', 250.00);
  var pDesconto = Produto.promocao('Moletom Jujutsu Kaisen', 200.00, 10);

  pEsgotado.exibirInfo();
  pDesconto.exibirInfo();
}
