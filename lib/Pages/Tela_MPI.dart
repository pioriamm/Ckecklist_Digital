import 'package:flutter/material.dart';
import 'package:mpi/Widget/card.dart';
import 'package:mpi/Widget/widget_placa.dart';

class Mpi extends StatefulWidget {

  @override
  _MpiState createState() => _MpiState();
}

class _MpiState extends State<Mpi> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text("MPI 1"), centerTitle: true,),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: widget_placa(),
              ),
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
