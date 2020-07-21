import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpi/Services/Arquivos.dart';
import 'package:mpi/services/ftp.dart';

import 'Home.dart';

class SlashScream extends StatefulWidget {
  @override
  _SlashScreamState createState() => _SlashScreamState();
}

class _SlashScreamState extends State<SlashScream> {
  bool valor = false;
  bool aberto = true;
  String ip = 'null';
  final controle = TextEditingController();
  Ftp fpt = Ftp();

  @override
  void initState() {
    lerdata().then((value) {
      setState(() {
        ip = value.trim();
        controle.text = ip;
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
            ip == null
                ? ShowDialog()
                : InkWell(
                    onTap: () {
                      fpt.servidoron(ip: ip).then(
                            (value) => setState(() {
                              valor = value;
                              valor == true
                                  ? Future.delayed(Duration(seconds: 1), () {
                                      Navigator.of(context).pushReplacement(
                                          CupertinoPageRoute(
                                              builder: (context) => Home()));
                                    })
                                  : ShowDialog();
                            }),
                          );
                    },
                    child: AnimatedContainer(
                      curve: Curves.easeInOutQuart,
                      duration: Duration(milliseconds: 700),
                      width: valor == true ? 0 : width - 100,
                      height: valor == true ? 0 : 50,
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

  ShowDialog() {
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
              controller: controle,
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
                  savedata(controle.text);
                  ip = controle.text;
                  initState();
                  Navigator.pop(context);
                },
                child: Text('Reconectar')),
          ],
        );
      },
    );
  }
}
