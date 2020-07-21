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
  bool aberto= true;
  String ip = 'null';
  final controle = TextEditingController();

  Ftp fpt = Ftp();

  @override
  void initState()  {
    lerdata().then((value) {
      setState(() {
        ip=value.trim();
        controle.text = ip;
      });
    });
    fpt.servidoron(ip: ip).then(
          (value) => setState(
            () {
              valor = value;
              valor == true
                  ? Future.delayed(Duration(seconds: 1), () {
                      Navigator.of(context).pushReplacement(
                          CupertinoPageRoute(builder: (context) => Home()));
                    })
                  : ShowDialog();
            },
          ),
        );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffc95651),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: Image.asset(
                'imagens/assets/logo3.gif',
                height: 500,
                width: 500,
              ),
            ),
            //SizedBox( height: 150,),
            Container(
                width: 300,
                height: 100,
                child: valor != true
                    ? Container(
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              height: 50,
                              child: Text(
                                "Chamando Servidor:  $ip",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                          ],
                        ),
                      )
                    : Container(
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              height: 50,
                              child: Text(
                                "Vualá.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                          ],
                        ),
                      )),
          ],
        ),
      ),
    );
  }

   ShowDialog(){
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
        ),
        actions: [
          FlatButton(
              onPressed: (){
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
