import 'dart:convert';
import 'dart:ui';

import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpi/Modelos/Constants.dart';
import 'package:mpi/Modelos/Os.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Services/Api.dart';
import 'package:mpi/Widget/widget_botton_sheets.dart';

import 'Tela_crlv.dart';

class Home extends StatefulWidget {
  Usuarios usuario = Usuarios();

  Home({this.usuario});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final oscontrol = TextEditingController();
  final placacontrole = TextEditingController();
  final tipcontrole = TextEditingController();
  bool clicou = false;
  List<Os> pesquisado = List<Os>();
  List<Os> todasos = List<Os>();

  @override
  void initState() {
    super.initState();
    setState(() {
      _getTodasOs();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("CHECKLIST"),
            centerTitle: true,
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _getTodasOs;
                    Toast(mensagen: "Lista Atualizada");
                  },
                  child: Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ))
            ],
          ),
          //drawer: Drawer(),
          body: Stack(
            children: [
              Positioned(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(top: 70),
                  child: todasos.length == 0
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: todasos.length,
                          itemBuilder: (context, index) {
                            return Card_OsAberta(index);
                          }),
                ),
              ),
              Positioned(
                top: 2,
                child: Pesquisa(
                  nomeempresa: widget.usuario.login,
                ),
              ),
//            Positioned(
//            bottom: 5,
//            right: 5,
//              child: Row(
//                children: [Botao_Add()],
//            ),
//          ),
            ],
          )),
    );
  }

  //metodos

  Pesquisa({nomeempresa}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width - 20,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.grey.withOpacity(0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        clicou = true;
                      });
                    },
                    child: clicou == false
                        ? Container(
                            width: 20,
                            child: Icon(Icons.search),
                          )
                        : Container(
                            width: 20,
                            child: Icon(Icons.delete),
                          ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOutQuart,
                    width: clicou == true ? 200 : 0,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            onSubmitted: (valor) {
                              for (var i in todasos) {
                                if (i.os == valor) {
                                  setState(() {
                                    print("entrou");
                                    placacontrole.clear();
                                    clicou = false;
                                    todasos.clear();
                                    pesquisado.add(Os(
                                        os: i.os,
                                        placa: i.placa,
                                        csvnome: i.csvnome,
                                        data: i.data,
                                        status: i.status,
                                        hora: i.hora));
                                    todasos = pesquisado;
                                  });
                                } else {
                                  setState(() {
                                    print("nao entrou");
                                    placacontrole.clear();
                                    clicou = false;
                                  });
                                }
                              }
                            },
                            controller: placacontrole,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "OS NÚMERO"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 30,
                    child: Builder(
                      builder: (context) => Container(
                        height: 35,
                        width: 35,
                        child: InkWell(
                          onTap: () => showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return widget_botton_sheets();
                            },
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffF0F8FF),
                            radius: 35,
                            child: Center(
                              child: Container(
                                  height: 20,
                                  width: 35,
                                  child: Text(
                                    nomeempresa.substring(0, 2).toUpperCase(),
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Botao_Add() {
    return InkWell(
      onTap: () {
        ShowDialog();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 0.5, color: Colors.white)),
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
            height: 200,
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
        _getTodasOs();
        pesquisado.clear();
        MudarPagina(
            context: context,
            pagina: Tela_crlv(
              os: os,
              usuarios: widget.usuario,
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: Card(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 200,
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
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${todasos[index].placa.toUpperCase()}',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      SizedBox(height: 10),
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
