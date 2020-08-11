import 'package:flutter/material.dart';
import 'package:mpi/Modelos/Constants.dart';
import 'package:mpi/Modelos/Os.dart';
import 'package:mpi/Modelos/Usuarios.dart';
import 'package:mpi/Pages/Tela_MPI.dart';

class Tela_crlv extends StatelessWidget {
  Os os;
  Usuarios usuarios;

  Tela_crlv({this.os, this.usuarios});

  @override
  Widget build(BuildContext context) {
    var renavamcontrole = '00568576179';
    var placacontrole = 'OQS7504';
    var anofabcontrole = '2014';
    var notacontrole = '2020';
    var taralocontrole = '2020';
    var capacidadecontrole = '0.00';
    var lotacaobcontrole = '6';
    var especiecontrole = 'PASSAGEIRO';
    var tipocontrole = 'MOTOCICLETA';
    var marcamodeloversaomodelo = 'HONDA/CG 150 FAN ESI';
    var chassicontrole = '9C2KC1670DR518315';
    var combustivelcontrole = 'ALCOOL/GASOLINA';
    var corcontrole = 'PRETA';
    var potenciacontrol = '0';
    var cilindradacontrole = '149';
    var pbtcontrole = '1.16';
    var cmtcontrole = '0.00';
    var carrocariacontrole = 'NÃO APLICAVEL';
    var propnomecontrole = 'ANDREIA C GONCALVES REOLON';
    var propcpfcontrole = '084.057.669-30';
    var proplocalcontrole = 'UBERLANDIA';
    var propufcontrole = 'SC';
    var ufcontrole = 'SC';

    return Scaffold(
      appBar: AppBar(
        title: Text('OS: ${os.os}'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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

                  //comeca aqui
                  //propietario
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Dados(
                          label: 'PROPRIETÁRIO',
                          controlecrlv: propnomecontrole,
                          controleoriginal: '',
                          controleatual: ''),
                    ],
                  ),
                  //cpf / localidade / uf
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Dados(
                          label: 'CPF',
                          controlecrlv: propcpfcontrole,
                          controleoriginal: '',
                          controleatual: ''),
                      Dados(
                          label: 'LOCALIDADE',
                          controlecrlv: proplocalcontrole,
                          controleoriginal: '',
                          controleatual: ''),
                      Dados(
                          label: 'UF ',
                          controlecrlv: propufcontrole,
                          controleoriginal: '',
                          controleatual: ''),
                    ],
                  ),
                  //placa, renavam, chassi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Dados(
                          label: 'PLACA',
                          controlecrlv: placacontrole,
                          controleoriginal: placacontrole,
                          controleatual: placacontrole),
                      Dados(
                          label: 'RENAVAM',
                          controlecrlv: renavamcontrole,
                          controleoriginal: renavamcontrole,
                          controleatual: renavamcontrole),
                      Dados(
                          label: 'CHASSI',
                          controlecrlv: chassicontrole,
                          controleoriginal: chassicontrole,
                          controleatual: chassicontrole),
                    ],
                  ),
                  //marca, especie, tipo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Dados(
                          label: 'MARCA / MODELO / VERSÃO',
                          controlecrlv: marcamodeloversaomodelo,
                          controleoriginal: marcamodeloversaomodelo,
                          controleatual: marcamodeloversaomodelo),
                      Dados(
                          label: 'ESPÉCIE / TIPO',
                          controlecrlv: especiecontrole,
                          controleoriginal: especiecontrole,
                          controleatual: especiecontrole),
                      Dados(
                          label: 'TIPO VEÍCULO',
                          controlecrlv: tipocontrole,
                          controleoriginal: tipocontrole,
                          controleatual: tipocontrole),
                    ],
                  ),
                  //carrocaria / comustivel / ano fab
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Dados(
                          label: 'CARROCERIA',
                          controlecrlv: carrocariacontrole,
                          controleoriginal: carrocariacontrole,
                          controleatual: carrocariacontrole),
                      Dados(
                          label: 'COMBUSTIVEL',
                          controlecrlv: combustivelcontrole,
                          controleoriginal: combustivelcontrole,
                          controleatual: combustivelcontrole),
                      Dados(
                          label: 'ANO DE FAB',
                          controlecrlv: anofabcontrole,
                          controleoriginal: anofabcontrole,
                          controleatual: anofabcontrole),
                    ],
                  ),
                  //potenci /cilindrada /cor /ota / uf
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Dados(
                          label: 'POTÊNCIA',
                          controlecrlv: potenciacontrol,
                          controleoriginal: potenciacontrol,
                          controleatual: potenciacontrol),
                      Dados(
                          label: 'CILINDRADA',
                          controlecrlv: cilindradacontrole,
                          controleoriginal: cilindradacontrole,
                          controleatual: cilindradacontrole),
                      Dados(
                          label: 'COR',
                          controlecrlv: corcontrole,
                          controleoriginal: corcontrole,
                          controleatual: corcontrole),
                      Dados(
                          label: 'NOTA FISCAL',
                          controlecrlv: notacontrole,
                          controleoriginal: notacontrole,
                          controleatual: notacontrole),
                      Dados(
                          label: 'UF',
                          controlecrlv: ufcontrole,
                          controleoriginal: ufcontrole,
                          controleatual: ufcontrole),
                    ],
                  ),
                  //cmt / pbt / tara  cap carg
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Dados(
                          label: 'CMT',
                          controlecrlv: cmtcontrole,
                          controleoriginal: cmtcontrole,
                          controleatual: cmtcontrole),
                      Dados(
                          label: 'PBT',
                          controlecrlv: pbtcontrole,
                          controleoriginal: pbtcontrole,
                          controleatual: pbtcontrole),
                      Dados(
                          label: 'LOTRAÇÃO',
                          controlecrlv: lotacaobcontrole,
                          controleoriginal: lotacaobcontrole,
                          controleatual: lotacaobcontrole),
                      Dados(
                          label: 'TARA',
                          controlecrlv: taralocontrole,
                          controleoriginal: taralocontrole,
                          controleatual: taralocontrole),
                      Dados(
                          label: 'CAP. CARGA',
                          controlecrlv: capacidadecontrole,
                          controleoriginal: capacidadecontrole,
                          controleatual: capacidadecontrole),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Botao_Next(
            context: context,
            nome: 'MPI',
            pagina: Tela_MPI(
              os: os,
              usuarios: usuarios,
            ),
          ),
        ],
      ),
    );
  }

  Container Dados({label, controlecrlv, controleatual, controleoriginal}) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 8),
          ),
          Text(
            '${controlecrlv}',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            '${controleoriginal}',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            '${controleatual}',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
