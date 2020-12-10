import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:urna_mobile/mocks/candidato.dart';
import 'package:urna_mobile/mocks/partido.dart';
import 'package:urna_mobile/screens/details/datails.dart';
import 'package:urna_mobile/services/candidate_service.dart';
import 'package:urna_mobile/services/vote_service.dart';

class ListCanditates extends StatefulWidget {
  @override
  _ListCanditatesState createState() => _ListCanditatesState();
}

class _ListCanditatesState extends State<ListCanditates> {
  CandidateService candidateService = new CandidateService();
  VoteService voteService = new VoteService();

  FirebaseFirestore _db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var votes = voteService.getVotes();
    votes.map((event) => print(event));
    votes.forEach((element) {
      for(var i = 0; i < element.length; i++) {
        print(element.asMap()[i].voter);
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Candidatos'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: Text(
              '${partidos[index].title}',
            ),
            children: [
              Column(
                // children: _buildExpandable(partidos[index]),
                children: _buildExpandable(partidos[index]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandable(Partido partido) {
    List<Widget> columnContent = [];

    for (Candidato content in partido.candidatos) {
      columnContent.add(
        Material(
          child: InkWell(
            child: ListTile(
              title: Text(content.nome),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              );
            },
          ),
        ),
      );
    }

    return columnContent;
  }
}
