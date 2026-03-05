Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Lincoln N Mezzalira' );
  }
 
void main() {
  buscarUsuario().then((nome) {
    print('O nome do usuário é: $nome');
  });
}