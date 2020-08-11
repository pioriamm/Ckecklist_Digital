import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpi/Modelos/Constants.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Services/Api.dart';
import 'package:mpi/Services/Arquivos.dart';
import 'package:mpi/services/ftp.dart';

import 'Home.dart';

class SlashScream extends StatefulWidget {
  @override
  _SlashScreamState createState() => _SlashScreamState();
}

class _SlashScreamState extends State<SlashScream> {
  Usuarios usuarios = Usuarios();
  bool valor = false;
  bool aberto = true;
  bool clicou = false;
  String ip = 'null';
  final TextEditingController_ip = TextEditingController();
  final TextEditingController_login = TextEditingController();
  final TextEditingController_senha = TextEditingController();

  List<Usuarios> UsuariosBanco = List<Usuarios>();
  Usuarios logado = Usuarios();
  Usuarios u = Usuarios();
  Ftp fpt = Ftp();

  @override
  void initState() {
    _getTodosUsuario();
    lerdata().then((value) {
      setState(() {
        ip = value.trim();
        TextEditingController_ip.text = ip;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Color(0xffc95651),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width,
              child: Image.asset(
                'imagens/assets/logo3.gif',
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ip == null
                ? Dialog_PegarIp()
                : InkWell(
                    onTap: () {
                      fpt.servidoron(ip: ip).then(
                            (value) => setState(() {
                              valor = value;
                              valor == true ? BottonSheet() : Dialog_PegarIp();
                            }),
                          );
                    },
                    child: AnimatedContainer(
                      curve: Curves.easeInOutQuart,
                      duration: Duration(milliseconds: 100),
                      width: width - 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text("Sevidor $ip",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 20))),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Dialog_PegarIp() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Servidor Não Responde"),
          content: AnimatedContainer(
            curve: Curves.bounceIn,
            duration: Duration(seconds: 1),
            height: aberto == true ? 60 : 2,
            width: 200,
            child: TextField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: TextEditingController_ip,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Qual é o IP?',
              ),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: [
            FlatButton(
                onPressed: () {
                  savedata(TextEditingController_ip.text);
                  ip = TextEditingController_ip.text;
                  initState();
                  Navigator.pop(context);
                },
                child: Text('Reconectar')),
          ],
        );
      },
    );
  }

  Dialog_ErrodeUsuario() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 5,
            content: Container(
              height: 150,
              child: Column(children: <Widget>[
                Icon(
                  Icons.do_not_disturb,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(
                  height: 60,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Não foi encontrado o Usuário ',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text:
                              '${TextEditingController_login.text.toUpperCase()}',
                          style: TextStyle(fontSize: 20, color: Colors.red)),
                      TextSpan(
                          text: ' , no banco de dados.',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                )
              ]),
            ),
          );
        });
  }

  _getTodosUsuario() {
    List<Usuarios> UsuarioEncontrados = List<Usuarios>();
    Api.getUsuarios().then((value) {
      Iterable lt = json.decode(value.body);
      UsuarioEncontrados = lt.map((e) => Usuarios.fromJson(e)).toList();
      setState(() {
        UsuariosBanco = UsuarioEncontrados;
      });
    });
  }

  Botao_Login({Color fundobotao, Color letra}) {
    return InkWell(
      onTap: () {
        for (var i in UsuariosBanco) {
          if (i.login == TextEditingController_login.text) {
            setState(() {
              usuarios.login = i.login;
              usuarios.nome = i.nome;
              usuarios.email = i.email;
            });
          }
        }
        if (usuarios.login != null) {
          setState(() {
            TextEditingController_login.clear();
            clicou = false;
          });
          PularPagina(
              context: context,
              pagina: Home(
                usuario: usuarios,
              ));
        } else {
          setState(() {
            clicou = true;
          });
          Dialog_ErrodeUsuario();
        }
      },
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: fundobotao),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Center(
            child: Text(
              "Entrar",
              style: TextStyle(fontSize: 20, color: letra),
            ),
          ),
        ),
      ),
    );
  }

  BottonSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
            height: clicou == true ? 520 : 250,
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 35, left: 35, top: 10),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: TextEditingController_login,
                      obscureText: false,
                      onTap: () {
                        setState(() {
                          clicou = true;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Usuario',
                      ),
                    ),
                    TextField(
                      controller: TextEditingController_senha,
                      obscureText: true,
                      onTap: () {
                        setState(() {
                          clicou = true;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Senha',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Botao_Login(
                          fundobotao: Colors.red, letra: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
