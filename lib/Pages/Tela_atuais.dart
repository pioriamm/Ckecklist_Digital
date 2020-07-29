import 'package:flutter/material.dart';

class Tela_atuais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var codigorenavamcontrole = TextEditingController();
    var placacontrole = TextEditingController();
    var anofabcontrole = TextEditingController();
    var exerciciocontrole = TextEditingController();
    var anomodelocontrole = TextEditingController();
    var capacidadecontrole = TextEditingController();
    var lotacaobcontrole = TextEditingController();
    var especiecontrole = TextEditingController();
    var tipocontrole = TextEditingController();
    var marcamodeloversaomodelo = TextEditingController();
    var placaanteriorcontrole = TextEditingController();
    var chassicontrole = TextEditingController();
    var ccombustivelcontrole = TextEditingController();
    var corcontrole = TextEditingController();
    var categoriacontrole = TextEditingController();
    var motorcontrole = TextEditingController();
    var potenciacontrol = TextEditingController();
    var cilindradacontrole = TextEditingController();
    var pbtcontrole = TextEditingController();
    var cmtcontrole = TextEditingController();
    var eixoscontrol = TextEditingController();
    var carrocariacontrole = TextEditingController();
    var cpfcontrole = TextEditingController();
    var nomecontrole = TextEditingController();
    var ufcontrole = TextEditingController();
    var localcontrole = TextEditingController();
    var datacontrole = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                height: 600,
                width: 700,
                color: Color(0xFF87CEEB),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 700,
                      color: Color(0xFF006400),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            height: 50,
                            width: 50,
                            child: Image.asset('imagens/assets/brasao.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 8.0, left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "REPUBLICA FEDERATIVA DO BRASIL",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF8FBC8F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "MINISTERIO DA INFRAESTRUTURA",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF8FBC8F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "DEPARTAMENTO NACIONAL DE TRANSITO - DETRAN",
                                      style: TextStyle(
                                        fontSize: 7,
                                        color: Color(0xFF8FBC8F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DETRAN",
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "xxxxx",
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "RLV - ATUAIS",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CÓDIGO RENAVAM",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: codigorenavamcontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PLACA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: placacontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EXERCICIO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: exerciciocontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ANO FABRICAÇÃO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: anofabcontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ANO MODELO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: anomodelocontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CAPACIDADE",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: capacidadecontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LOTAÇÃO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: lotacaobcontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ESPÉCIE / TIPO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: especiecontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                  Text(' / '),
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: tipocontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MARCA / MODELO / VERSÃO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: marcamodeloversaomodelo,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PLACA ANTERIOR",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: placaanteriorcontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CHASSI",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: chassicontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "COR PREDOMINANTE",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: corcontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "COMBUSTIVEL",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: ccombustivelcontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CATEGORIA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: categoriacontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MOTOR",
                                style: TextStyle(fontSize: 8),
                              ),
                              Container(
                                  height: 15,
                                  width: 90,
                                  child: TextField(
                                      controller: motorcontrole,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "POTÊNCIA / CILINDRADA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 50,
                                      child: TextField(
                                          controller: potenciacontrol,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                  Text(' / '),
                                  Container(
                                      height: 15,
                                      width: 50,
                                      child: TextField(
                                          controller: cilindradacontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PBT",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 30,
                                      child: TextField(
                                          controller: pbtcontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CMT",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 30,
                                      child: TextField(
                                          controller: cmtcontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EIXOS",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 50,
                                      child: TextField(
                                          controller: eixoscontrol,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CARROÇARIA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: carrocariacontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "NOME",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: nomecontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CPF",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: cpfcontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LOCAL",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: localcontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                  Text(' / '),
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: ufcontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DATA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 15,
                                      width: 90,
                                      child: TextField(
                                          controller: datacontrole,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
