import 'dart:core';

class Vote {
  // final String id;
  final String voter;
  final String candidate;
  // final String candidateMayor;
  final String time;

  // Vote({@required this.id, this.voter, this.candidate, this.candidateMayor, this.time});
  // Vote({this.id, this.voter, this.candidate, this.time});
  Vote({this.voter, this.candidate, this.time});

  factory Vote.fromJson(Map<String, dynamic> json) {
    return Vote(
      voter: json['voter'],
      candidate: json['candidate'],
      // candidateMayor: json['candidateMayor'],
      time: json['time']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      // 'id': id,
      'voter': voter,
      'candidate': candidate,
      // 'candidateMayor': candidateMayor,
      'time': time
    };
  }
}