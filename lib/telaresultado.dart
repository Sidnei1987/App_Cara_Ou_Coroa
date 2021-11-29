import 'package:flutter/material.dart';
class TelaResultado extends StatefulWidget {

  String valor;

  TelaResultado(this.valor);

  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "imagens/moeda_cara.png";
    if(widget.valor == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              } ,
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),

      ),
    );
  }
}
