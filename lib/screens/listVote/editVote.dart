import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:urna_mobile/screens/main/menu.dart';
import 'package:urna_mobile/services/auth.dart';
import 'package:urna_mobile/services/vote_service.dart';

class EditVote extends StatefulWidget {
  @override
  final String voteId;
  const EditVote({Key key, this.voteId}) : super(key: key);
  _EditVoteState createState() => _EditVoteState();
}

class _EditVoteState extends State<EditVote> {
  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20);
  String _candidate;
  String _voteNumber;
  bool _dialogAction = false;

  @override
  Widget build(BuildContext context) {
    VoteService voteService = new VoteService();
    voteService.getVoteNumber(widget.voteId).then(
          (val) => setState(
            () {
              _voteNumber = val;
            },
          ),
        );

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('This person has voted in ' + _voteNumber),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('If you proceed you are updating the vote to ' +
                      _candidate +
                      '.'),
                  Text('Do you want to proceed?'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Continue'),
                onPressed: () {
                  setState(() {
                    _dialogAction = true;
                  });
                  return true;
                },
              ),
              FlatButton(
                child: Text('Return'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('EDIT VOTE'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                    child: Image.asset(
                      'assets/images/urna.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  TextField(
                    obscureText: false,
                    style: style,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: 'New Vote',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _candidate = value.trim();
                      });
                    },
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        _showMyDialog();
                        if(_dialogAction) {
                          voteService.updateVote(widget.voteId, _candidate);
                        }
                      },
                      child: Text(
                        'Update Vote',
                        textAlign: TextAlign.center,
                        style: style.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
