import 'package:http/http.dart' as http;

class Api {
  static Future getOsAbertas() async {
    return await http.get('http://179.108.32.136:55572/api/os');
  }

  static Future getUsuarios() async {
    return await http.get('http://179.108.32.136:55572/api/usuarios');
  }
}
