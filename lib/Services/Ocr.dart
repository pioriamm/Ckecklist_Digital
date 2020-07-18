
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/cupertino.dart';
class Ocr {

  Future <String> TextpLido(@required file) async {
    String fotocor;
    FirebaseVisionImage minhaimagem = FirebaseVisionImage.fromFile(file);
    TextRecognizer textoreconhecido = FirebaseVision.instance.textRecognizer();
    VisionText textolido = await textoreconhecido.processImage(minhaimagem);

    for (TextBlock block in textolido.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement word in line.elements) {
            fotocor = word.text;
        }
      }
    }
    return fotocor;
  }
}