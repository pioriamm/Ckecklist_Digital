class Rnc {
  String id;
  String codigo;
  String grupo;
  String elemento;
  String rnc;

  Rnc({this.id, this.codigo, this.grupo, this.elemento, this.rnc});

  Rnc.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    codigo = json['codigo'];
    grupo = json['grupo'];
    elemento = json['elemento'];
    rnc = json['rnc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['codigo'] = this.codigo;
    data['grupo'] = this.grupo;
    data['elemento'] = this.elemento;
    data['rnc'] = this.rnc;
    return data;
  }
}
