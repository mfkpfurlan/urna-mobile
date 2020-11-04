import 'package:flutter/material.dart';
import 'package:urna_mobile/screens/vote/components/display.dart';
import 'package:urna_mobile/screens/vote/components/keyboard.dart';

class VotePage extends StatefulWidget {
  @override
  _VotePageState createState() => _VotePageState();
}

class _VotePageState extends State<VotePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text('Urna Virtual')),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            VoteDisplay(),
            VoteKeyboard(),
          ],
        ),
      ),
    );
  }
}
