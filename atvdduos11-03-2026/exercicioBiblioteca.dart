abstract class ItemBiblioteca {
  String titulo;
  int anoPublicacao;

  ItemBiblioteca(this.titulo, this.anoPublicacao);

  void exibirDetalhes();
}

class Livro extends ItemBiblioteca {
  String autor;
  int paginas;

  Livro(String titulo, int ano, this.autor, this.paginas) : super(titulo, ano);

  @override
  void exibirDetalhes() {
    print('📖 Livro: $titulo | Autor: $autor | $paginas pág. ($anoPublicacao)');
  }
}

class DVD extends ItemBiblioteca {
  double duracao;

  DVD(String titulo, int ano, this.duracao) : super(titulo, ano);

  @override
  void exibirDetalhes() {
    print('💿 DVD: $titulo | Duração: ${duracao}h ($anoPublicacao)');
  }
}

void main() {
  List<ItemBiblioteca> acervo = [
    Livro('O Hobbit', 1937, 'J.R.R. Tolkien', 310),
    Livro('1984', 1949, 'George Orwell', 328),
    Livro('Dom Casmurro', 1899, 'Machado de Assis', 256),
    DVD('Interstellar', 2014, 2.8),
    DVD('O Poderoso Chefão', 1972, 2.9),
  ];

  print('--- ACERVO DA BIBLIOTECA ---');
  for (var item in acervo) {
    item.exibirDetalhes();
  }
}