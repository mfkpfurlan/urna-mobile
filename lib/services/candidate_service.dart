import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/candidate.dart';

class CandidateService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Candidate>> getCandidates() {
    return _db.collection('candidates')
      // .where('time', isGreaterThan: DateTime.now().add(Duration(days: -30)))
      .snapshots()
      .map((snapshot) => snapshot.docs
      .map((doc) => Candidate.fromJson(doc.data()))
      .toList());
  }

  // Future<void> setCandidate(Candidate candidate) {
  //   var options = SetOptions(merge: true);
  //   return _db.collection('candidates')
  //     .doc(candidate.id)
  //     .set(candidate.toMap(), options);
  // }

  Future<void> deleteCandidate(String id) {
    return _db.collection('candidates')
      .doc(id)
      .delete();
  }
}