import 'dart:convert';

import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpi/Modelos/Os.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Services/Api.dart';
import 'package:mpi/Widget/widget_ultimas_noticias.dart';

import 'Inspecao.dart';

class Home extends StatefulWidget {
  Usuarios u = Usuarios();

  Home(this.u);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final oscontrol = TextEditingController();
  final placacontrole = TextEditingController();
  final tipcontrole = TextEditingController();
  var todasos = List<Os>();

  @override
  void initState() {
    super.initState();
    setState(() {
      _getTodasOs();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CKELIST DIGITAL"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Cabecalho_Pesquisa(),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: todasos.length == 0
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            itemCount: todasos.length,
                            itemBuilder: (context, index) {
                              return Card_OsAberta(index);
                            }),
                  ),
                ),
              ],
            ),
            /*Positioned(
              bottom: 5,
              right: 5,
              child: Row(
                children: [Botao_Add()],
              ),
            ),*/
          ],
        ));
  }

  //metodos

  Cabecalho_Pesquisa() {
    return Center(
      child: widget_ultimas_noticias(
        nomeempresa: widget.u.login.toUpperCase(),
      ),
    );
  }

  Botao_Add() {
    return InkWell(
      onTap: () {
        //ShowDialog();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            ' + ABRIR',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Add_Inpecao(String nome) async {
    setState(() async {
      var list = await Api.getOsAbertas();
      print(list.length);
    });
  }

  ShowDialog() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("NOVA OS"),
          content: Container(
            height: 180,
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  controller: oscontrol,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Número da os',
                  ),
                ),
                TextField(
                  controller: placacontrole,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Placa',
                  ),
                ),
                TextField(
                  controller: tipcontrole,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Tipo',
                  ),
                ),
              ],
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar')),
            FlatButton(
                onPressed: () {
                  setState(() {
                    Os o = Os(
                        status: "ABERTO",
                        placa: this.placacontrole.text,
                        os: this.oscontrol.text,
                        csvnome: this.tipcontrole.text,
                        hora: formatDate(
                            DateTime.now(), [dd, '/', mm, '/', yyyy]),
                        data:
                            formatDate(DateTime.now(), [HH, ':', nn, ':', ss]));
                    todasos.insert(todasos.length, o);
                    oscontrol.clear();
                    placacontrole.clear();
                    tipcontrole.clear();
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'Salvar',
                  style: TextStyle(color: Colors.green),
                )),
          ],
        );
      },
    );
  }

  Card_OsAberta(index) {
    return InkWell(
      onTap: () {
        Os os = Os(
          data: todasos[index].data,
          hora: todasos[index].hora,
          csvnome: todasos[index].csvnome,
          os: todasos[index].os,
          placa: todasos[index].placa,
          status: todasos[index].status,
        );

        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => Inspecao(os)));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            bottomLeft: Radius.circular(25.0),
          ),
          child: Card(
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${todasos[index].os}',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            '${todasos[index].csvnome}',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${todasos[index].placa == null ? "zero" : todasos[index].placa.toUpperCase()}',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Text('Data: ${todasos[index].data}'),
                      Text('Hora: ${todasos[index].hora}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getTodasOs() {
    Api.getOsAbertas().then((value) {
      setState(() {
        Iterable lt = json.decode(value.body);
        todasos = lt.map((e) => Os.fromJson(e)).toList();
      });
    });
  }
}
