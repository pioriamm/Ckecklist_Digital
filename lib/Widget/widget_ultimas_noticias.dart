import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mpi/Widget/widget_botton_sheets.dart';

class widget_ultimas_noticias extends StatefulWidget {
  String nomeempresa;
  bool clicou = false;
  List lista = List();
  List pesquisado = List();

  widget_ultimas_noticias({
    this.nomeempresa,
  });

  @override
  _widget_ultimas_noticiasState createState() =>
      _widget_ultimas_noticiasState();
}

class _widget_ultimas_noticiasState extends State<widget_ultimas_noticias> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
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
                        widget.clicou = !widget.clicou;
                      });
                    },
                    child: Container(
                      width: 20,
                      child: Icon(Icons.search),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOutQuart,
                    width: widget.clicou == true ? 200 : 0,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "OS / PLACA"),
                      obscureText: false,
                      onChanged: (valor) {
                        setState(() {
                          print('.... VALOR : $valor');
                          pesquisa(List: widget.lista, valor: valor);
                        });
                      },
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
                                    widget.nomeempresa
                                        .substring(0, 2)
                                        .toUpperCase(),
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

  Future<List> pesquisa({List, valor}) async {
    setState(() {
      for (int index = 0; index <= List.length; index++) {
        if (List[index].toString().contains(valor)) {
          widget.pesquisado.add(List[index].toString());
          print('lista filtrada ${widget.pesquisado.toString()}');
        }
      }
    });

    return await widget.pesquisado;
  }
}
