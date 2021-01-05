import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:urna_mobile/screens/candidates2.dart/candidates2.dart';
import 'package:urna_mobile/screens/listVote/listVote.dart';
import 'package:urna_mobile/screens/login/login.dart';
import 'package:urna_mobile/screens/vote/vote2.dart';
import 'package:urna_mobile/services/auth.dart';
import 'package:urna_mobile/services/vote_service.dart';

class MenuBody extends StatefulWidget {
  @override
  _MenuBodyState createState() => _MenuBodyState();
}
class _MenuBodyState extends State<MenuBody> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    VoteService voteService = new VoteService();
    AuthService authService = new AuthService();
    int _votedBool;
    voteService.alreadyVoted(authService.getEmail()).then((val) {
      _votedBool = val;
      print(val);
    });

    bool voted() {
      var result =
          _votedBool == 0 ? false : true;
      print(result);
      return result;
    }

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('You have already voted'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Since you have already voted, you can not do it again.'),
                  Text('You can edit your vote in the edit vote page.'),
                ],
              ),
            ),
            actions: <Widget>[
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

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.06),
      child: GridView.count(
        primary: true,
        crossAxisCount: 2,
        padding: EdgeInsets.only(
          left: size.width * 0.03,
          right: size.width * 0.03,
        ),
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        children: [
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/candidatos.jpg'),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Candidate2()));
                },
              ),
            ),
          ),
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/urna.jpg'),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  if (voted() == true) {
                    return _showMyDialog();
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VotePage2()));
                  }
                },
              ),
            ),
          ),
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/logout.jpeg'),
              fit: BoxFit.contain,
              child: InkWell(
                onTap: () {
                  auth.signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ),
          ),
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/results.jpeg'),
              fit: BoxFit.fill,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListVote()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
