import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:mpi/Services/Ocr.dart';
import 'package:image_cropper/image_cropper.dart';


class widget_placa extends StatefulWidget {

  @override
  _widget_placaState createState() => _widget_placaState();
}

class _widget_placaState extends State<widget_placa> {
  String placa = "xxx-122";
  String ocrplaca = 'xxx-0000';

  Ocr ocr = new Ocr();
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () async {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        File files  = File(pickedFile.path);
        File cropped = await ImageCropper.cropImage(
            sourcePath: files.path,
            androidUiSettings: AndroidUiSettings(
              hideBottomControls: true,
                toolbarColor: Colors.red,
                toolbarWidgetColor: Colors.white,
                initAspectRatio: CropAspectRatioPreset.ratio16x9,
                lockAspectRatio: false),
        );

        placa = await ocr.TextpLido(cropped);

        setState(() {
          ocrplaca = placa == null ?  ocrplaca = 'xxx-0000': ocrplaca = placa.toLowerCase();
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        child: Stack(children: <Widget>[
          Container(
            height: 102,
            width: 208,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 15,
                    offset: Offset(5, 10),
                  )
                ]
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(top: 3),
                  height: 25,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xfff0332a0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 15,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Stack(children: <Widget>[
                  Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Center(child: Text(ocrplaca.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),)),
                  ),
                  Positioned(
                    bottom: 2,
                    left: 7,
                    child: Container(
                      child: Text("BR", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],)
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
