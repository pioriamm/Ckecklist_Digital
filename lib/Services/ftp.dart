import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:ftpconnect/ftpconnect.dart';

class Ftp {
  Future enviarFtp(File arquivo, String nome, String ip) async {
    FTPConnect ftpConnect =
        FTPConnect(ip, user: 'mpi', pass: 'mpi', timeout: 30);
    try {
      await ftpConnect.connect();
      await ftpConnect.uploadFile(arquivo, sRemoteName: nome);
      await ftpConnect.disconnect();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future <bool> servidoron ( {@required ip }) async{
    FTPConnect ftpConnect = FTPConnect(
        ip, user: 'mpi', pass: 'mpi', timeout: 1);
    try {
      bool conect = await ftpConnect.connect();
      await ftpConnect.disconnect();
      return conect;
    } catch (e) {
      return false;
    }
  }

}

