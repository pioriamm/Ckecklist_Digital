class Usuarios {
  String login;
  String nome;
  String email;

  Usuarios({this.login, this.nome, this.email});

  Usuarios.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    nome = json['nome'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['nome'] = this.nome;
    data['email'] = this.email;
    return data;
  }
}
