import 'package:flutter/material.dart';

class Data {
  final String description;
  final IconData icon;

  Data(this.description, this.icon);
}

List<Data> mock1 = [
  new Data(
    'Insta', Icons.casino
  ),
  new Data(
    'Face', Icons.satellite
  ),
  new Data(
    'Twitter', Icons.scanner
  ),
];