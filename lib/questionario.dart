import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';


class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas ;
  final int perguntaSelecionada;
  final void Function() quandoresponder;

    Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoresponder,
});
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),

        // cria os botões de respostas
        ...(perguntas[perguntaSelecionada]['respostas']
        as List<String>)
            .map((resposta) {
          return Resposta(resposta, quandoresponder);
        })
            .toList(),
      ],
    );
  }
}
