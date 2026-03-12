import 'dart:async';

Stream<String> iniciarChat() async* {
  final mensagens = [
    '🥷🏿: Olá, tudo bem?',
    '🥷🏻: Oi! Tudo certo por aqui.',
    '🥷🏿: Estudando Streams no Dart?',
    '🥷🏻: Sim, é um conceito muito legal!',
    'Sistema: 🥷🏿 saiu da conversa.',
  ];

  for (var msg in mensagens) {
    await Future.delayed(Duration(seconds: 1));

    yield msg;
  }
}

void main() {
  final chatStream = iniciarChat();

  chatStream.listen(
    (mensagem) {
      print('\n📩 Nova mensagem recebida:\n$mensagem');
    },
    onDone: () {
      print('\n* CHAT ENCERRADO PELO SERVIDOR...');
    },
    onError: (erro) {
      print('❌ Ocorreu um erro no fluxo: $erro');
    },
  );
}
 