import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String getEmail() {
    if (_auth.currentUser != null) {
      return _auth.currentUser.email;
    }
  }
}