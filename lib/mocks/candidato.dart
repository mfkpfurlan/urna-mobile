import 'data.dart';

class Candidato {
  final String nome;
  final String numero;
  List<Data> data;

  Candidato(this.nome, this.numero, this.data);
}

List<Candidato> candidatosPt = [
  new Candidato('Doria', '11111', mock1),
  new Candidato('Russomano', '22222', mock1),
];

List<Candidato> candidatosPsol = [
  new Candidato('Helio', '33333', mock1),
  new Candidato('Ze Maria', '44444', mock1)
];

var douglas = new Candidato ('Douglas', '55555', mock1);