
import 'dart:math';

import 'package:app_cara_ou_coroa/telaresultado.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  void _exibiResultado(){

   var itens = ["cara", "coroa"];
   var numero = Random().nextInt(itens.length);
   var result = itens[numero];

    Navigator.push(
        context,
      MaterialPageRoute(builder: (context) => TelaResultado(result)
      )

    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Image.asset("imagens/logo.png"),
            GestureDetector(
              onTap: _exibiResultado ,
              child: Image.asset("imagens/botao_jogar.png"),
            )
          ],
        ),

      ),
    );
  }
}
