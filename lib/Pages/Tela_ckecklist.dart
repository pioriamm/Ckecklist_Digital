import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:mpi/Modelos/Constants.dart';
import 'package:mpi/Modelos/Os.dart';
import 'package:mpi/Modelos/Rnc.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Pages/Tela_done.dart';
import 'package:mpi/Services/Api.dart';

class Tela_ckecklist extends StatefulWidget {
  Os os;
  Usuarios usuarios;

  Tela_ckecklist({this.os, this.usuarios});

  @override
  _Tela_ckecklistState createState() => _Tela_ckecklistState();
}

class _Tela_ckecklistState extends State<Tela_ckecklist> {
  bool clicou = false;
  bool observacao = false;
  List<Rnc> grupo = List<Rnc>();
  Color selecionou;

  @override
  void initState() {
    super.initState();
    setState(() {
      _getTodasRnc();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('OS: ${widget.os.os}'),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Text(
                    "CHECKLIST",
                    style: TextStyle(fontSize: 30),
                  ))),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: grupo.length,
                      itemBuilder: (context, index) {
                        return CardsRnc(grupo, index, selecionado: false);
                      }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Botao_Next(
                      pagina: Done(
                        usuarios: widget.usuarios,
                      ),
                      context: context,
                      nome: "Finalizar"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  CardsRnc(lista, index, {selecionado = false}) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onLongPress: () {
          setState(() {
            clicou = !clicou;
            print("${grupo[index].codigo}");
          });
        },
        child: Card(
          elevation: 10,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 80,
                      child: Text(
                        '${lista[index].grupo}',
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 80,
                      child: Text(
                        '${lista[index].elemento}',
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 80,
                      child: Text(
                        '${lista[index].rnc}',
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 80,
                      child: Text(
                        '${lista[index].codigo}',
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        child: Icon(
                      LineAwesomeIcons.smile_o,
                      color: Colors.green,
                      size: 30,
                    )),
                    Container(
                        child: Icon(
                      LineAwesomeIcons.frown_o,
                      color: Colors.red,
                      size: 30,
                    )),
                    Container(
                        child: Icon(
                      LineAwesomeIcons.meh_o,
                      color: Colors.blue,
                      size: 30,
                    )),
                    InkWell(
                        onTap: () {
                          print(observacao);
                          setState(() {
                            selecionado = !selecionado;
                            print(observacao);
                          });
                        },
                        child: Container(
                            child: Icon(
                          LineAwesomeIcons.comment_o,
                          color: Colors.black,
                          size: 30,
                        ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Botao_Add() {
    return InkWell(
      onTap: () {
        setState(() {
          grupo.add(Rnc(
              id: '79a286e1-1101-47e9-a4c7-818ede71d732',
              codigo: '1000.1000.1000',
              elemento: 'INFORMAÇÕES DO CRLV',
              grupo: 'IDENTIFICAÇÃO',
              rnc: 'NÃO COINCIDÊNCIA DA MARCA, MODELO OU COR DO VEÍCULO'));
        });
        //ShowDialog();
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
            ' Confirmar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  ShowDialog() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("ALERTA"),
          content: Container(
            height: 70,
            child: Column(
              children: [
                Text(
                    "Sua lista contem ${5}, itens marcados. \n\nDeseja confirmar?"),
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
                  Navigator.pop(context);
                },
                child: Text(
                  'Ok',
                  style: TextStyle(color: Colors.green),
                )),
          ],
        );
      },
    );
  }

  _getTodasRnc() {
    Api.getRnc().then((value) {
      setState(() {
        Iterable lt = json.decode(value.body);
        grupo = lt.map((e) => Rnc.fromJson(e)).toList();
      });
    });
  }
}
