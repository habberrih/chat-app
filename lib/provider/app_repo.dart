import 'package:flutter/material.dart';

import '../data/models/user.dart';

class AppRepo extends ChangeNotifier {
  String? _token;
  User? user;

  /// Get the authentication token.
  String? get token => _token;

  /// Set the authentication token.
  set token(String? value) {
    _token = value;
    //notifyListeners();
  }
}
