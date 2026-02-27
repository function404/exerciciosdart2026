// Exercício 14: Interface e Implementação [cite: 305]
abstract class Veiculo {
  void acelerar();
}

class Carro implements Veiculo {
  @override
  void acelerar() {
    print('Carro acelerando: ran dan dan dan PAA!');
  }
}

class Moto implements Veiculo {
  @override
  void acelerar() {
    print('Moto acelerando: zummmm iummmmmmm!');
  }
}

void main() {
  List<Veiculo> frota = [Carro(), Moto(), Carro()];

  for (var veiculo in frota) {
    veiculo.acelerar();
  }
}
