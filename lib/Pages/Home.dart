import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpi/Pages/Manutencao.dart';
import 'package:mpi/Pages/Tela_MPI.dart';

class Home extends StatelessWidget {
  double size = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'imagens/assets/otm.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 150,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('imagens/assets/logo_grupo.png'),
            )),
        Positioned(
          top: 300,
          right:20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => Tela_MPI())),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Container(
                        height: size,
                        width: size,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                          child: Container(
                            color: Colors.grey.withOpacity(0.3),
                            child: Center(
                              child: Text("MPI 1",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Manutancao())),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Container(
                        height: size,
                        width: size,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                          child: Container(
                            color: Colors.grey.withOpacity(0.3),
                            child: Center(
                              child: Text("MPI 2",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Manutancao())),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Container(
                        height: size,
                        width: size,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                          child: Container(
                            color: Colors.grey.withOpacity(0.3),
                            child: Center(
                              child: Text("MPI 3 ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Manutancao())),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Container(
                        height: size,
                        width: size,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                          child: Container(
                            color: Colors.grey.withOpacity(0.3),
                            child: Center(
                              child: Text("SIVAPP",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width-200,
          bottom: 10,
          child: Container(
            height: 20,
            width: 300,
            child: Text(
              "Develop by Marcelo dos santos",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ));
  }
}
