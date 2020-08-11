import 'package:flutter/material.dart';
import 'package:mpi/Modelos/Constants.dart';
import 'package:mpi/Modelos/Os.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Widget/card.dart';

import 'Tela_FotosAdicionais.dart';

class Tela_MPI extends StatefulWidget {
  Os os;
  Usuarios usuarios;

  Tela_MPI({this.os, this.usuarios});

  @override
  _Tela_MPIState createState() => _Tela_MPIState();
}

class _Tela_MPIState extends State<Tela_MPI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OS: ${widget.os.os}'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Widget_Card(nome: 'DIANTEIRA', peso: 1),
                  Widget_Card(nome: 'TRASEIRA', peso: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Widget_Card(nome: 'PANORAMICA', peso: 3),
                  Widget_Card(nome: 'PLACA', peso: 4),
                ],
              ),
              Botao_Next(
                context: context,
                nome: 'FOTOS ADICIONAIS',
                largura: 200.0,
                pagina: Tela_FotosAdicionais(
                    os: widget.os, usuarios: widget.usuarios),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
