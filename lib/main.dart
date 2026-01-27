import 'package:flutter/material.dart';
import './questao.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  var _perguntaSelecionada = 0;

  void _responder(){
    _perguntaSelecionada++;
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'qual sua cor favorita',
      'qual seu animal favorito',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          centerTitle: true,
              title: (Text('Perguntas')),
        ),
        body: Column(
          children: [
           Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: const Text('Sua resposta foi aceita'),
              onPressed: _responder,
            ),
              ElevatedButton(
                child: const Text('Sua resposta foi aceita'),
                onPressed: _responder,
              ),
                ElevatedButton(
                  child: const Text('Sua resposta foi aceita'),
                  onPressed: _responder,
                ),
          ],
        ),
      ),
    );
  }
}



