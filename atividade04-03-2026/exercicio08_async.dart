Stream<int> numerosStream() async* {
  for (int i = 1; i <= 20; i++) {
    yield i;
  }
}

void main() {
  print('Transformando Stream...');
  numerosStream()
    .where((n) => n % 2 == 0)
    .map((n) => n * 2)
    .take(5)
    .listen((resultado) {
      print('Resultado processado: $resultado');
    });
}
