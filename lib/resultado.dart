import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {


 final  int pontuacao;
 final void Function()  quandoreiniciarQuestionario;

const Resultado(this.pontuacao,this.quandoreiniciarQuestionario);


 String get fraseResultado{
   if(pontuacao <=13){
     return 'ruim voce precisa melhorar';
   }else if(pontuacao < 24){
     return 'Voce esta bem continuie assim ';
   }else{
     return 'zerou o game';
   }
 }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(
            child: Text(fraseResultado, style: TextStyle(fontSize: 40)),
          ),
        ),
          ElevatedButton(
          onPressed: quandoreiniciarQuestionario,
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
    elevation: 4,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    ),
    child: const Text(
    'Reiniciar Quiz',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
          ),
      ],

    );

  }
}
