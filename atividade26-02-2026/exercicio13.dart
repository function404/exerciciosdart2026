// Exercício 13: Herança
class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor efetuado. Saldo: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor efetuado. Saldo: R\$ $saldo');
    } else {
      print('Saldo insuficiente para o saque de R\$ $valor.');
    }
  }
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  void aplicarRendimento(double taxa) {
    double rendimento = saldo * taxa;
    saldo += rendimento;
    print('Rendimento FinSecure aplicado. Novo saldo: R\$ $saldo');
  }
}

void main() {
  var minhaConta = ContaPoupanca('Usuário FinSecure', 1000.0);
  minhaConta.depositar(500.0);
  minhaConta.sacar(200.0);
  minhaConta.aplicarRendimento(0.05); // 5%
}
