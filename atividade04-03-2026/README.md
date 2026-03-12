# Atividade 04/03/2026 - Programação Assíncrona

## 📝 Sobre a Atividade
Esta atividade aprofunda o comportamento assíncrono no Dart, essencial para o desenvolvimento mobile moderno. Os exercícios simulam chamadas de rede, respostas em banco de dados e fluxos contínuos de eventos usando os recursos nativos da linguagem.

## 📂 Estrutura dos Exercícios

* **Futures e Requisições**
  * `exercicio01_async.dart` a `exercicio03_async.dart`: Simulação de APIs, atrasos (`Future.delayed`) e encadeamento de requisições.
  * `exercicio04_async.dart`: Uso do `Future.wait` para execução de chamadas simultâneas.
  * `exercicio05_async.dart`: Tratamento de exceções e controle de Tempo Limite (`Timeout`).

* **Streams e Reatividade**
  * `exercicio06_async.dart` a `exercicio08_async.dart`: Criação de fluxos contínuos (Streams), transformações com métodos funcionais (`map`, `where`) e uso de `StreamController`.
  * `exercicio09_async.dart`: Implementação de controladores do tipo Broadcast para múltiplos ouvintes.
  * `exercicio10_async.dart`: Lógica e simulação de cliques rápidos de usuário e aplicação de *debounce*.

* **Casos de Uso Complexos**
  * `exercicio11_async.dart`: Sistema de fallback testando a recuperação de dados via Cache vs API.
  * `exercicio12_async.dart`: Simulação de um sistema de radar tático misturando múltiplas Futures com a escuta constante de Streams.