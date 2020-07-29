import 'package:flutter/material.dart';
import 'package:mpi/Widget/card.dart';

class Tela_MPI extends StatefulWidget {
  @override
  _Tela_MPIState createState() => _Tela_MPIState();
}

class _Tela_MPIState extends State<Tela_MPI> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Widget_Card(nome: 'DIANTEIRA', peso: 1),
                      Widget_Card(nome: 'TRASEIRA', peso: 2),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Widget_Card(nome: 'PANORAMICA', peso: 3),
                      Widget_Card(nome: 'PLACA', peso: 4),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }


}
