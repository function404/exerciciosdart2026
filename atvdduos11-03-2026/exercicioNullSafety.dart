class Usuario {
  String nome;
  String? apelido;
  late String biografia;

  Usuario(this.nome, {this.apelido});

  void definirBio(String texto) {
    biografia = texto;
  }

  void imprimirPerfil() {
    String display = apelido ?? nome;
    print('Perfil: $display');
    print('Bio: $biografia');
  }
}

void main() {
  var user1 = Usuario('Gustavo', apelido: 'Drypzz');
  user1.definirBio('Desenvolvedor focado em Dart.');
  user1.imprimirPerfil();

  print('\n---\n');

  var user2 = Usuario('Alves');
  user2.definirBio('Estudante de tecnologia.');
  user2.imprimirPerfil();
}