import 'data.dart';

class Candidato {
  final String nome;
  final String numero;
  List<Data> data;
  final String about;
  final String profession;
  final String past;

  Candidato(this.nome, this.numero, this.data, this.about, this.profession, this.past);
}

String loren = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vehicula rutrum urna, a facilisis dolor dignissim id. Maecenas pharetra ex nisl, at consequat erat tristique eget. Vestibulum nec tempor metus. Maecenas nec enim a dui blandit mollis. Duis ut luctus sapien. Quisque interdum nisl nec mattis vehicula. Mauris interdum dui sit amet nulla dictum dictum. Sed vel augue a ante tempor maximus. Nulla rutrum, lacus in interdum blandit, sapien tortor rhoncus magna, id laoreet quam dui nec velit. Sed malesuada vehicula metus semper ullamcorper. Phasellus tortor enim, semper vel risus ac, interdum elementum leo. Vestibulum malesuada lacus mauris, nec sodales nulla ornare id. Nulla maximus et felis vitae finibus. Maecenas at lobortis nulla, sed feugiat turpis. Aliquam erat volutpat. Nam pharetra, risus sed tempor accumsan, eros nulla accumsan massa, et consectetur dolor erat in neque. Nullam iaculis nisi eu purus tincidunt luctus. In fermentum ac lectus nec lacinia. Vestibulum scelerisque nunc at faucibus porta. Mauris ut erat eget leo ullamcorper consectetur in nec purus. Aenean efficitur, elit id bibendum faucibus, est quam consequat nisi, porta pharetra ligula odio a risus. Nunc lobortis porttitor tincidunt. Morbi porta enim sollicitudin arcu eleifend maximus quis sodales tellus. Aenean et aliquet lacus. Nulla ac.';

List<Candidato> candidatosPt = [
  new Candidato('Doria', '11111', mock1, 'a', 'a', 'a'),
  new Candidato('Russomano', '22222', mock1, 'a', 'a', 'a'),
];

List<Candidato> candidatosPsol = [
  new Candidato('Helio', '33333', mock1, 'a', 'a', 'a'),
  new Candidato('Ze Maria', '44444', mock1, 'a', 'a', 'a')
];

var douglas = new Candidato (
  'Douglas',
  '55555',
  mock1,
  loren,
  'Medico e Gestor',
  'Vereador, Ministro');