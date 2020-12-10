import 'package:cloud_firestore/cloud_firestore.dart';

import 'models/vote.dart';

class VoteService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Vote>> getVotes() {
    return _db.collection('votes')
      // .where('time', isGreaterThan: DateTime.now().add(Duration(days: -30)))
      .snapshots()
      .map((snapshot) => snapshot.docs
      .map((doc) => Vote.fromJson(doc.data()))
      .toList());
  }

  Future<void> setVote(Vote vote) {
    // var options = SetOptions(merge: true);
    return _db.collection('votes')
      // .doc(vote.id)
      .add(vote.toMap());
  }

  Future<void> deleteVote(String id) {
    return _db.collection('votes')
      .doc(id)
      .delete();
  }

  Future<int> alreadyVoted(String voter) async {
    final QuerySnapshot result = await _db.collection('votes')
      .where('voter', isEqualTo: voter)
      .limit(1)
      .get();
    final List<DocumentSnapshot> documents = result.docs;
    return documents.length;
  }
}