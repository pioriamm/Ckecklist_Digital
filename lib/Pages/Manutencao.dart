import 'package:flutter/material.dart';

class Manutancao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estamos em Manutenção, volte em breve"),
      ),
      body: Center(
        child: Image.asset("imagens/assets/Manutencao.png"),
      ),
    );
  }
}
