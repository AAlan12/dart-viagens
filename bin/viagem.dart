import 'transporte.dart';

class Viagem {
  static String codTrabalho = "ALA12";
  double dinheiro = 0;

  Transporte locomocao;

  Set<String> registrosVisitados = <String>{};
  Map<String, double> registrarPrecos = {};

  int _totalLugaresVisitados = 0;

  Viagem({required this.locomocao});

  printCod() {
    print(codTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print('Você irá de CARRO');
        break;
      case Transporte.bike:
        print('Você irá de BIKE');
        break;
      case Transporte.moto:
        print('Você irá de MOTO');
        break;
      case Transporte.metro:
        print('Você irá de METRO');
        break;
      case Transporte.onibus:
        print('Você irá de ÔNIBUS');
        break;
      default:
        print("Você irá a PÉ");
        break;
    }
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLugaresVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLugaresVisitados;
  }

  void set alterarLocalVisitado(int novaQnt) {
    if (novaQnt <= 10) {
      _totalLugaresVisitados = novaQnt;
    } else {
      print('Não é possível');
    }
  }
}
