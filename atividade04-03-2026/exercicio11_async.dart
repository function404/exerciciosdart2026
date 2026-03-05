Map<String, String> cache = {'tema': 'escuro'};

 Future<String> buscarDaAPI(String chave) async {
  await Future.deleyed(Duration(seconds: 1));

  if (chave == 'idioma') {
    return 'pt-BR';
  }

  return null;
}

Future<String?> buscarConfiguracao(String chave) async {
  return cache[chave] ?? await buscarDaAPI(chave);
}


void main() async {
  print('Buscando configuração...');

  String? tema = await buscarConfiguracao('tema');
  print('Tema: $tema (Veio do Cache)');

  String? idioma = await buscarConfiguracao('idioma');
  print('Idioma: $idioma (Veio da API)');

  String? fonte = await buscarConfiguracao('fonte');
  print('Fonte: $fonte (Não existe em nenhum lugar)');

  print('Tamanho da string de idioma: ${idioma?.length ?? 0}');
}
