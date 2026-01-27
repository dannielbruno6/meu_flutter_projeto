import 'package:flutter/material.dart';
import './questao.dart';

main (){
  runApp( MeuApp());

}
var _perguntaselecionada = 0;



void _responder() {
  _perguntaselecionada++;
  print(_perguntaselecionada);
}
class MeuApp extends StatefulWidget {
   MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  final perguntas =[
  'qual sua cor favorita',
  'qual seu anunmal favroito',
];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(home:
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('PERGUNTAS'),
      ),
      body: Column(
        children: [
          Text(perguntas[_perguntaselecionada]),
          ElevatedButton(
child: Text('pergunta 1'),
            onPressed: () {
              _responder();
            },

          ),
ElevatedButton(
child: Text('pergunta 1'),
onPressed: () {
_responder();
},

),
ElevatedButton(
child: Text('pergunta 1'),
onPressed: () {
_responder();
},

),

        ],
      ),


    ),
    );
  }
}
