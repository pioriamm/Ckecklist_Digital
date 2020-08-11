import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mpi/Services/Arquivos.dart';
import 'package:mpi/Services/ftp.dart';

class Widget_Card extends StatefulWidget {
  File file;
  File dianteira;
  File traseira;
  File panoramica;
  File placa;
  File thumb;

  int peso;
  bool salvo = false;
  String local;
  String nome;

  String diafoto = 'null';
  String Horafoto = 'null';
  double tamanholetra = 9;

  Widget_Card({this.file, @required this.nome, @required this.peso});

  @override
  _Widget_CardState createState() => _Widget_CardState();
}

class _Widget_CardState extends State<Widget_Card> {
  final picker = ImagePicker();
  Ftp fpt = Ftp();
  String ip = null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => getImage(widget.peso, widget.file),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 270,
            width: 160,
            decoration: BoxDecoration(
                color: Colors.grey.withAlpha(70),
                borderRadius: BorderRadius.circular(10)),
            child: widget.file == null
                ? Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      widget.file,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOutQuart,
                height: 45,
                width: 160,
                color: widget.salvo == true ? Colors.green : Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      widget.nome.toUpperCase(),
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOutQuart,
                height: 70,
                width: 160,
                color: widget.salvo == true ? Colors.green : Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 70,
                      width: 105,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Local: ',
                            style: TextStyle(
                                fontSize: widget.tamanholetra,
                                color: Colors.white),
                          ),
                          Text(
                            'Data : ${widget.diafoto.toString()}',
                            style: TextStyle(
                                fontSize: widget.tamanholetra,
                                color: Colors.white),
                          ),
                          Text(
                            'Hora : ${widget.Horafoto.toString()}',
                            style: TextStyle(
                                fontSize: widget.tamanholetra,
                                color: Colors.white),
                          ),
                          Text(
                            'Denatan',
                            style: TextStyle(
                                fontSize: widget.tamanholetra,
                                color: Colors.white),
                          ),
                          Text(
                            'OIA:',
                            style: TextStyle(
                                fontSize: widget.tamanholetra,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    widget.salvo != true
                        ? Container(
                            height: 70,
                            width: 50,
                            child: Center(
                              child: Icon(
                                Icons.cloud,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Container(
                            height: 70,
                            width: 50,
                            child: Center(
                              child: Icon(
                                Icons.cloud_done,
                                color: Colors.white,
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<File> getImage(int peso, File file) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      widget.diafoto = formatDate(DateTime.now(), [yyyy, mm, dd]);
      widget.Horafoto = formatDate(DateTime.now(), [HH, nn, ss, u]);
    });

    setState(
      () async {
        lerdata().then((ip) {
          switch (peso) {
            case 1:
              {
                widget.file = File(pickedFile.path);
                widget.dianteira = widget.file;
                fpt
                    .enviarFtp(widget.dianteira,
                        "${widget.diafoto}T${widget.Horafoto}-1-D.jpeg", ip)
                    .then((value) {
                  fpt.enviarFtp(
                      widget.dianteira,
                      "${widget.diafoto}T${widget.Horafoto}-1-D_Thumb.jpeg",
                      ip);
                  setState(() {
                    widget.salvo = value;
                  });
                });
              }
              break;

            case 2:
              {
                widget.file = File(pickedFile.path);
                widget.traseira = widget.file;
                fpt
                    .enviarFtp(widget.traseira,
                        "${widget.diafoto}T${widget.Horafoto}-1-T.jpeg", ip)
                    .then((value) {
                  fpt.enviarFtp(
                      widget.traseira,
                      "${widget.diafoto}T${widget.Horafoto}-1-T_Thumb.jpeg",
                      ip);
                  setState(() {
                    widget.salvo = value;
                  });
                });
              }
              break;
            case 3:
              {
                widget.file = File(pickedFile.path);
                widget.panoramica = widget.file;
                fpt
                    .enviarFtp(widget.panoramica,
                        "${widget.diafoto}T${widget.Horafoto}-1-L.jpeg", ip)
                    .then((value) {
                  fpt
                      .enviarFtp(
                          widget.panoramica,
                          "${widget.diafoto}T${widget.Horafoto}-1-L_Thumb.jpeg",
                          ip)
                      .then(
                        (value) => fpt.enviarFtp(
                            widget.panoramica,
                            "${widget.diafoto}T${widget.Horafoto}-1-CI.jpeg",
                            ip),
                      );
                  setState(() {
                    widget.salvo = value;
                  });
                });
              }
              break;
            case 4:
              {
                widget.file = File(pickedFile.path);
                widget.placa = widget.file;
                fpt
                    .enviarFtp(widget.placa,
                        "${widget.diafoto}T${widget.Horafoto}-1-P.jpeg", ip)
                    .then((value) {
                  fpt.enviarFtp(
                      widget.placa,
                      "${widget.diafoto}T${widget.Horafoto}-1-P_Thumb.jpeg",
                      ip);
                  setState(() {
                    widget.salvo = value;
                  });
                });
              }
              break;
          }
        });
      },
    );
    return widget.file;
  }
}
