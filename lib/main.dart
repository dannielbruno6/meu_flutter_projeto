import 'package:flutter/material.dart';
import 'package:primeiro_projeto/resultado.dart';
import './questionario.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  int _perguntaSelecionada = 0;
  int _pontuacaototal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
            {'texto': 'vermelho', 'pontuacao': 5},
        {'texto': 'azul', 'pontuacao': 7},
            {'texto': 'verde', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
  {'texto': 'gato', 'pontuacao': 10},
  {'texto': 'cachorro', 'pontuacao': 8},
  {'texto': 'zebra', 'pontuacao': 4},
  {'texto': 'leao', 'pontuacao': 3},
]
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'danniel', 'pontuacao': 10},
        {'texto': 'pedro', 'pontuacao': 8},
        {'texto': 'maria', 'pontuacao': 4},
        {'texto': 'joao', 'pontuacao': 7},
      ]
    },
  ];

    void reiniciarQuestionario() {
      setState(() {
        _perguntaSelecionada = 0;
        _pontuacaototal = 0;
      });
    }
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaototal += pontuacao;
    });
    print(_pontuacaototal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('PERGUNTAS'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoresponder: _responder,
              )
            : Resultado(_pontuacaototal,reiniciarQuestionario),
      ),
    );
  }
}
