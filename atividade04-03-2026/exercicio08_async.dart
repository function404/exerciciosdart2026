Future<int> numerosStream() async {
  for (int i = 1; i <= 20; i++) {
    yield i;
  }
}

void main() {
  print('transformando Stream...');
  numerosStream()
    .where((n) => n % 2 == 0)
    .map((n) => n * 2)
    .take(5)
    .listen((r) {
    print('Resultado: $r');
  });
}