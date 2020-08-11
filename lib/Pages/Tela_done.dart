import 'package:flutter/material.dart';
import 'package:mpi/Modelos/Constants.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Pages/Home.dart';

class Done extends StatefulWidget {
  Usuarios usuarios;

  Done({this.usuarios});

  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  bool naoclicado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: InkWell(
                onTap: () {
                  Future.delayed(Duration(seconds: 3), () {
                    MudarPagina(
                        context: context,
                        pagina: Home(
                          usuario: widget.usuarios,
                        ));
                  });
                  setState(() {
                    naoclicado = !naoclicado;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInBack,
                  height: 60,
                  width: naoclicado ? 150 : 300,
                  decoration: naoclicado
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red)
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue),
                  child: naoclicado
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 600,
                            ),
                            Text(
                              "Enviar",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 500,
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white)),
                            SizedBox(
                              height: 600,
                            ),
                            Text(
                              "Enviando",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 500,
                            ),
                          ],
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
