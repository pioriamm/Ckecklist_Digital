import 'package:flutter/material.dart';
import 'package:mpi/Modelos/Constants.dart';
import 'package:mpi/Modelos/Os.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Widget/card.dart';

import 'Tela_ckecklist.dart';

class Tela_FotosAdicionais extends StatefulWidget {
  Os os;
  Usuarios usuarios;

  Tela_FotosAdicionais({this.os, this.usuarios});

  @override
  _Tela_FotosAdicionaisState createState() => _Tela_FotosAdicionaisState();
}

class _Tela_FotosAdicionaisState extends State<Tela_FotosAdicionais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NÚMERO: ${widget.os.os}'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Widget_Card(nome: 'CHAPA DE INDENTIFICAÇÃO', peso: 5),
                      Widget_Card(nome: 'CHASSI', peso: 6),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Widget_Card(nome: 'CILINDRO GNV', peso: 7),
                      Widget_Card(nome: 'FAIXAS REFLETIVAS', peso: 8),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Widget_Card(nome: 'ITENS DE SEGURANÇA', peso: 9),
                      Widget_Card(nome: 'PARACHOQUE', peso: 10),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Widget_Card(nome: 'PLACA DE IDENTIFICAÇÃO', peso: 11),
                      Widget_Card(nome: 'PNEU / EIXO (S) DIANTEIRO', peso: 12),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Widget_Card(nome: 'PNEU / EIXO (S) TRASEIRO', peso: 13),
                      Widget_Card(nome: 'RI -REGISTRO INSPEÇÃO', peso: 14),
                    ],
                  )
                ],
              ),
              Botao_Next(
                context: context,
                nome: 'CHECKLIST',
                pagina: Tela_ckecklist(
                  os: widget.os,
                  usuarios: widget.usuarios,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
