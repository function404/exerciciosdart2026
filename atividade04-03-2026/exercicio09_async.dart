import 'dart:async';

void main() {
  final controller = StreamController<int>.broadcast();

  int contador = 0;
  int soma = 0;

  controller.stream.listen((n) => print('Listener 1 (print simples): $n'));

  controller.stream.listen((n) {
    contador++;
    print('Listener 2 (contador): Total de itens recebidos = $contador');
  });

  controller.stream.listen((n) {
    soma += n;
    print('Listener 3 (soma): Valor total acumulado = $soma');
  });

  print('Emitindo números...');
  for (int i = 1; i <= 10; i++) {
    controller.sink.add(i);
  }

  controller.close();
}
