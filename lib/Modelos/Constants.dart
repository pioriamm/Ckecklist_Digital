import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

MudarPagina({context, pagina}) {
  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (contex) => pagina,
    ),
  );
}

PularPagina({context, pagina}) {
  Navigator.pushReplacement(
    context,
    CupertinoPageRoute(
      builder: (contex) => pagina,
    ),
  );
}

Botao_Next({pagina, nome, context, largura = 120.0}) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (contex) => pagina,
        ),
      );
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          height: 42,
          width: largura,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 0.5, color: Colors.white)),
          child: Center(
            child: Text(
              nome,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}

Toast({mensagen}) {
  Fluttertoast.showToast(
    msg: mensagen,
    backgroundColor: Colors.grey,
  );
}
