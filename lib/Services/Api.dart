import 'package:http/http.dart' as http;

class Api {
  static Future getOsAbertas() async {
    return await http.get('http://192.168.0.108:55572/api/os');
  }

  static Future getUsuarios() async {
    return await http.get('http://192.168.0.108:55572/api/usuarios');
  }

  static Future getRnc() async {
    return await http.get('http://192.168.0.108:55572/api/rnc');
  }
}

//SELECT Principal_Contatos.Nome_RazaoSocial, CPF_CNPJ, Principal_Contatos.Municipio, Principal_Contatos.UF, s.Placa, s.Renavam,s.Chassi,s.MarcaModelo,
//s.EspecieVeiculo,s.TipoVeiculo, s.Carrocaria, s.Combustivel, s.AnoFabricacao,s.Potencia,s.Cilindradas,s.cor, s.NotaFiscalVeiculoNumero,s.Uf,s.Cmt,s.Pbt,
//s.CapacidadePassageiros,  s.Tara, s.CapacidadeCarga
//
//FROM            Servicos
//inner join SivWin_CaracteristicasSerpro as s on s.ServicoId = Servicos.Id
//inner join Principal_Contatos on Principal_Contatos.Id = Servicos.ClienteId
//WHERE ServicoId = (select id from servicos where ServicoNumero = 62805)
