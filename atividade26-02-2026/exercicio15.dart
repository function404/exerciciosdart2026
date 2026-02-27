// Exercício 15: Mixins em Ação [cite: 307]
mixin Voador {
  void voar() => print('Voando alto nas nuvens...');
}

mixin Nadador {
  void nadar() => print('Nadando nas profundezas...');
}

mixin Corredor {
  void correr() => print('Correndo muito rápido!');
}

class Pato with Nadador, Voador {
  String nome;
  Pato(this.nome);
}

class Golfinho with Nadador {
  String nome;
  Golfinho(this.nome);
}

class Avestruz with Corredor {
  String nome;
  Avestruz(this.nome);
}

void main() {
  var patolino = Pato('Patolino');
  var flipper = Golfinho('Flipper');
  var papaLeguas = Avestruz('Papa-Léguas');

  print('--- Ações do ${patolino.nome} ---');
  patolino.nadar();
  patolino.voar();

  print('\n--- Ações do ${flipper.nome} ---');
  flipper.nadar();

  print('\n--- Ações do ${papaLeguas.nome} ---');
  papaLeguas.correr();
}
