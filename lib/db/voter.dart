class Voter {
  int _id;
  String _name;
  String _city;
  String _voteLocation;
  bool _voted;
  DateTime _votedOn;

  Voter(this._name, this._city, this._voteLocation, this._voted, this._votedOn);

  Voter.withId(this._id, this._name, this._city, this._voteLocation, this._voted, this._votedOn);

  Voter.fromMap(map) {
    this._id = map["id"];
    this._name = map["name"];
    this._city = map["city"];
    this._voteLocation = map["voteLocation"];
    this._voted = map["voted"];
    this._votedOn = map["votedOn"];
  }

  int get id => _id;
  String get name => _name;
  String get city => _city;
  String get voteLocation => _voteLocation;
  bool get voted => _voted;
  DateTime get votedOn => _votedOn;

  set name(String name) {
    this._name = name;
  }

  set city(String city) {
    this._city = city;
  }

  set voteLocation(String voteLocation) {
    this._voteLocation = voteLocation;
  }

  set voted(bool voted) {
    this._voted = voted;
  }

  set votedOn(DateTime votedOn) {
    this._votedOn = votedOn;
  }

  toMap() {
    var map = Map<String, dynamic>();

    if (_id != null) {
      map["id"] = _id;
    }

    map["name"] = _name;
    map["city"] = _city;
    map["voteLocation"] = _voteLocation;
    map["voted"] = _voted;
    map["votedOn"] = _votedOn;
  }
}