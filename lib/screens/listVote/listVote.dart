import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:urna_mobile/screens/listVote/editVote.dart';

class ListVote extends StatefulWidget {
  @override
  _ListVoteState createState() => _ListVoteState();
}

class _ListVoteState extends State<ListVote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Votos')),
        body: Center(
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('votes').orderBy('voter').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot documentSnapshot =
                        snapshot.data.documents[index];
                    return Material(
                      child: InkWell(
                        child: ListTile(
                          leading: Container(
                            width: 300,
                            child: Text(documentSnapshot["voter"]),
                          ),
                          title: Text(documentSnapshot["candidate"]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditVote(voteId: documentSnapshot.id),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              }
            },
          ),
        ));
  }
}
