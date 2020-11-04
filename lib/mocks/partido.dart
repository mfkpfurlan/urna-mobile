import 'candidato.dart';

class Partido {
  final String title;
  final String number;
  List<Candidato> candidatos;

  Partido(this.title, this.number, this.candidatos);
}

List<Partido> partidos = [
  new Partido('PT', '13', candidatosPt),
  new Partido('PSOL', '50', candidatosPsol)
];