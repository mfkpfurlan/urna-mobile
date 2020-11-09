import 'package:flutter/material.dart';

class Candidate {
  int _id;
  String _name;
  String _number;
  String _city;
  String _party;
  String _shortParty;
  bool _mayor;
  String _website;
  String _email;
  String _twitter;
  String _facebook;
  String _instagram;
  String _description;
  String _profession;
  String _past;

  Candidate(
    this._name,
    this._number,
    this._city,
    this._party,
    this._shortParty,
    this._mayor,
    this._website,
    this._email,
    this._twitter,
    this._facebook,
    this._instagram,
    this._description,
    this._profession,
    this._past
  );

  Candidate.withId(
    this._id,
    this._name,
    this._number,
    this._city,
    this._party,
    this._shortParty,
    this._mayor,
    this._website,
    this._email,
    this._twitter,
    this._facebook,
    this._instagram,
    this._description,
    this._profession,
    this._past
  );

  Candidate.fromMap(map){
    this._id = map["id"];
    this._name = map["name"];
    this._number = map["number"];
    this._city = map["city"];
    this._party = map["party"];
    this._shortParty = map["shortParty"];
    this._mayor = map["mayor"];
    this._website = map["website"];
    this._email = map["email"];
    this._twitter = map["twitter"];
    this._facebook = map["facebook"];
    this._instagram = map["instagram"];
    this._description = map["description"];
    this._profession = map["profession"];
    this._past = map["past"];
  }

  int get id => _id;
  String get name => _name;
  String get number => _number;
  String get city => _city;
  String get party => _party;
  String get shortParty => _shortParty;
  bool get mayor => _mayor;
  String get website => _website;
  String get email => _email;
  String get twitter => _twitter;
  String get facebook => _facebook;
  String get instagram => _instagram;
  String get description => _description;
  String get profession => _profession;
  String get past => _past;

  set id(int id) {
    this._id = id;
  }

  set name(String name) {
    this._name = name;
  }

  set number(String number) {
    this._number = number;
  }

  set city(String city) {
    this._city = city;
  }

  set party(String party) {
    this._party = party;
  }

  set shortParty(String shortParty) {
    this._shortParty = shortParty;
  }

  set mayor(bool mayor) {
    this._mayor = mayor;
  }

  set website(String website) {
    this._website = website;
  }

  set email(String email) {
    this._email = email;
  }

  set twitter(String twitter) {
    this._twitter = twitter;
  }

  set facebook(String facebook) {
    this._facebook = facebook;
  }

  set instagram(String instagram) {
    this._instagram = instagram;
  }

  set description(String description) {
    this._description = description;
  }

  set profession(String profession) {
    this._profession = profession;
  }

  set past(String past) {
    this._past = past;
  }

  toMap() {
    var map = Map<String, dynamic>();

    if (Icons.perm_identity != null) {
      map["id"] = _id;
    }
    map["id"] = _id;
    map["name"] = _name;
    map["number"] = _number;
    map["city"] = _city;
    map["party"] = _party;
    map["shortParty"] = _shortParty;
    map["mayor"] = _mayor;
    map["website"] = _website;
    map["email"] = _email;
    map["twitter"] = _twitter;
    map["facebook"] = _facebook;
    map["instagram"] = _instagram;
    map["description"] = _description;
    map["profession"] = _profession;
    map["past"] = _past;
  }

}