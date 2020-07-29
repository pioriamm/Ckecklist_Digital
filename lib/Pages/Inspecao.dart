import 'package:flutter/material.dart';
import 'package:mpi/Modelos/Os.dart';
import 'package:mpi/Pages/Tela_MPI.dart';

import 'file:///C:/Users/piori/AndroidStudioProjects/mpi/lib/Pages/Tela_atuais.dart';
import 'file:///C:/Users/piori/AndroidStudioProjects/mpi/lib/Pages/Tela_ckecklist.dart';
import 'file:///C:/Users/piori/AndroidStudioProjects/mpi/lib/Pages/Tela_crlv.dart';
import 'file:///C:/Users/piori/AndroidStudioProjects/mpi/lib/Pages/Tela_original.dart';

import 'Tela_fotosAdicionais.dart';

class Inspecao extends StatefulWidget {
  Os os;

  Inspecao(this.os);

  @override
  _InspecaoState createState() => _InspecaoState();
}

class _InspecaoState extends State<Inspecao> {
  final PageController pagina = PageController();
  int next = 0;
  int proxpagina = 0;
  int quantidadetela = 6;

  @override
  void initState() {
    pagina.addListener(() {
      next = pagina.page.round();
      setState(() {
        proxpagina = next;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${widget.os.os}',
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Paginas(),
            Positioned(
              bottom: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      chips(int: 0),
                      chips(int: 1),
                      chips(int: 2),
                      chips(int: 3),
                      chips(int: 4),
                      chips(int: 5),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ));
  }

  chips({int}) {
    return next == int
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              curve: Curves.bounceIn,
              duration: Duration(microseconds: 200),
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
              //child: Center(child: Text(nome, style: TextStyle(color: Colors.white60),)),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.grey),
              //child: Center(child: Text(nome, style: TextStyle(color: Colors.white60),)),
            ),
          );
  }

  PageView Paginas() {
    return PageView(
      physics: BouncingScrollPhysics(),
      controller: pagina,
      children: [
        Tela_crlv(),
        Tela_original(),
        Tela_atuais(),
        Tela_MPI(),
        Tela_fotosAdicionais(),
        Tela_ckecklist(),
      ],
    );
  }
}
