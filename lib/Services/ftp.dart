import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:ftpconnect/ftpconnect.dart';

class Ftp {
  Future enviarFtp(File arquivo, String nome, String ip) async {
    FTPConnect ftpConnect =
        FTPConnect(ip, user: 'mpi', pass: 'mpi', timeout: 30);
    try {
      await ftpConnect.connect();
      await ftpConnect.createFolderIfNotExist(
          '${formatDate(DateTime.now(), [yyyy, mm, dd])}');
      await ftpConnect
          .changeDirectory('${formatDate(DateTime.now(), [yyyy, mm, dd])}')
          .then((value) => ftpConnect.uploadFile(arquivo, sRemoteName: nome));
      await ftpConnect.disconnect();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> servidoron({@required ip}) async {
    FTPConnect ftpConnect =
        FTPConnect(ip, user: 'mpi', pass: 'mpi', timeout: 1);
    try {
      bool conect = await ftpConnect.connect();
      await ftpConnect.disconnect();
      return conect;
    } catch (e) {
      return false;
    }
  }
}

