class Candidate {
  final String name;
  final String number;
  final String about;

  Candidate({this.name, this.number, this.about});

  factory Candidate.fromJson(Map<String, dynamic> json) {
    return Candidate(
      name: json['voter'],
      number: json['candidate'],
      about: json['candidateMayor']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'number': number,
      'about': about
    };
  }
}