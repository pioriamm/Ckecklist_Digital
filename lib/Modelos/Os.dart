class Os {
  String os;
  String data;
  String hora;
  String placa;
  String status;
  String csvnome;

  Os({this.os, this.data, this.hora, this.placa, this.status, this.csvnome});

  Os.fromJson(Map<String, dynamic> json) {
    os = json['_os'];
    data = json['_data'];
    hora = json['_hora'];
    placa = json['_placa'];
    status = json['_status'];
    csvnome = json['_csvnome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['os'] = this.os;
    data['data'] = this.data;
    data['hora'] = this.hora;
    data['placa'] = this.placa;
    data['status'] = this.status;
    data['csvnome'] = this.csvnome;
    return data;
  }
}
