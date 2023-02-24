import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemJunho = Viagem(locomocao: Transporte.metro);
  print(viagemJunho.consultarTotalLocaisVisitados);
  viagemJunho.visitar('Cinema');
  print(viagemJunho.consultarTotalLocaisVisitados);
  viagemJunho.alterarLocalVisitado = 7;
  print(viagemJunho.consultarTotalLocaisVisitados);
}
