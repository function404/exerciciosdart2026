// Executar no dartpad.dev ou em um ambiente Dart com suporte a HTTP

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> consultarClima() async {
  const url = 'https://api.open-meteo.com/v1/forecast?latitude=-26.30&longitude=-48.84&current_weather=true';

  print('☁️ Consultando clima atual...');

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dados = jsonDecode(response.body);

      final temp = dados['current_weather']['temperature'];
      final vento = dados['current_weather']['windspeed'];

      print('\n');
      print('✅ Sucesso!');
      print('🌡️ Temperatura: $temp°C');
      print('💨 Vento: $vento km/h');
    } else {
      print('❌ Erro no servidor: Código ${response.statusCode}');
    }
  } catch (e) {
    print('❌ Erro de conexão: Não foi possível acessar os dados.');
  }
}

void main() async {
  await consultarClima();
}