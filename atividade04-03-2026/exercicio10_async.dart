import 'dart:async';

void main() {
  final controller = StreamController<String>();
  Timer? debounceTimer;

  // Emulador de cliques rápidos do usuário (a cada 500ms)
  Timer.periodic(Duration(milliseconds: 500), (timer) {
    if (timer.tick > 5) {
      timer.cancel();
      controller.close();
      return;
    }
    print('>> Usuário digitou algo ${timer.tick}');
    controller.sink.add('Evento ${timer.tick}');
  });

  // Listener com lógica de Debounce customizada (aguarda 1 segundo)
  controller.stream.listen((e) {
    if (debounceTimer?.isActive ?? false) {
      // Cancela o timer anterior se houver novo evento
      debounceTimer!.cancel();
    }

    debounceTimer = Timer(Duration(milliseconds: 300), () {
      print('>> Evento processado após 1s de inatividade: $e');
    });
  });
}
