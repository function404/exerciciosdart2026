// Exercício 11: Classe Básica - Produto
class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  void exibirInfo() {
    print('Produto: $nome | R\$ $preco | Estoque: $estoque unidades');
  }
}

void main() {
  var p1 = Produto('Lámen Instantâneo', 5.50, 150);
  var p2 = Produto('Shuriken', 12.00, 30);
  var p3 = Produto('Ingresso Beira-Rio', 120.00, 5);

  p1.exibirInfo();
  p2.exibirInfo();
  p3.exibirInfo();
}
