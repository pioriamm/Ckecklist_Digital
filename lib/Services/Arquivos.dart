import 'dart:io';

import 'package:path_provider/path_provider.dart';


  Future<File> caminhoArquivo() async {
    final pasta = await getApplicationDocumentsDirectory();
    return File('${pasta.path}/data.json');
  }
  Future<File> savedata( String ip) async {
    String data = ip;
    final file =   await caminhoArquivo();
    return file.writeAsString(data);
  }
  Future<String> lerdata() async {
    try {
      final file = await caminhoArquivo();
      return file.readAsString();
    } catch (e){
      return "nao existe";
  }
  }
