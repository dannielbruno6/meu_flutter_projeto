import 'package:flutter/material.dart';

class  Resposta extends StatelessWidget {

  final String texto;
 final void Function() quandoSelecionado;

  Resposta(this.texto,this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: quandoSelecionado,

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,   // cor do botão
          foregroundColor: Colors.white,   // cor do texto
        ),
        child:  Text(texto),
        ),
    );
  }
}
