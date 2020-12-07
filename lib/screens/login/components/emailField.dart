import 'package:flutter/material.dart';
import 'constants.dart' as Constants;

class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      style: Constants.style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
      ),
    );
  }
}