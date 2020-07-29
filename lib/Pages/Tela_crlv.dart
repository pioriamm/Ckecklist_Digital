import 'package:flutter/material.dart';

class Tela_crlv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var codigorenavamcontrole = '00568576179';
    var placacontrole = 'OQS7504';
    var anofabcontrole = '2014';
    var exerciciocontrole = '2020';
    var anomodelocontrole = '2020';
    var capacidadecontrole = '0.00';
    var lotacaobcontrole = '6';
    var especiecontrole = 'PASSAGEIRO';
    var tipocontrole = 'MOTOCICLETA';
    var marcamodeloversaomodelo = 'HONDA/CG 150 FAN ESI';
    var placaanteriorcontrole = 'XXX-000';
    var chassicontrole = '9C2KC1670DR518315';
    var ccombustivelcontrole = 'ALCOOL/GASOLINA';
    var corcontrole = 'PRETA';
    var categoriacontrole = 'PARTICULAR';
    var motorcontrole = '45f4a4fa6as';
    var potenciacontrol = '0';
    var cilindradacontrole = '149';
    var pbtcontrole = '1.16';
    var cmtcontrole = '0.00';
    var eixoscontrol = '1';
    var carrocariacontrole = 'NÃO APLICAVEL';
    var cpfcontrole = '000.000.000-30';
    var nomecontrole = 'ANDREIA C GONCALVES REOLON';
    var ufcontrole = 'SC';
    var localcontrole = 'UBERLANDIA';
    var datacontrole = '27/07/2020';

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
                color: Color(0xFF8FBC8F),
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
                                "CRLV - BIM",
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
                              Text(
                                '$codigorenavamcontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "PLACA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$placacontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "EXERCICIO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$exerciciocontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "ANO FABRICAÇÃO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$anofabcontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "ANO MODELO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$anomodelocontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "CAPACIDADE",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$capacidadecontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "LOTAÇÃO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$lotacaobcontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "ESPÉCIE / TIPO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$especiecontrole / $tipocontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "MARCA / MODELO / VERSÃO",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$marcamodeloversaomodelo',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "PLACA ANTERIOR",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$placaanteriorcontrole / $tipocontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "CHASSI",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$chassicontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "COR PREDOMINANTE",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$corcontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "COMBUSTIVEL",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$ccombustivelcontrole' '',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "CATEGORIA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$categoriacontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "MOTOR",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$motorcontrole' '',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "POTÊNCIA / CILINDRADA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$potenciacontrol / $cilindradacontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "PBT",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$pbtcontrole' '',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "CMT",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$cmtcontrole' '',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "EIXOS",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$eixoscontrol' '',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "CARROÇARIA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$carrocariacontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "NOME",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$nomecontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "CPF",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$cpfcontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "LOCAL",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$localcontrole / $ufcontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                                "DATA",
                                style: TextStyle(fontSize: 8),
                              ),
                              Text(
                                '$datacontrole',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
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
