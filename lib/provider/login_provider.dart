import 'package:chat_app/data/responses/login_response.dart';
import 'package:chat_app/data/services/login_service.dart';
import 'package:flutter/material.dart';

/// The `LoginProvider` class is responsible for managing the login functionality in a chat app.
/// It provides a method to perform a login operation using a username and password, and returns a `LoginResponse` object.
class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';

  /// Performs a login operation using the provided username and password.
  /// It creates a `LoginService` object with the username and password,
  /// and calls its `call()` method to initiate the login process.
  /// The method returns a `Future<LoginResponse>` object representing the login response.
  Future<LoginResponse> login() async {
    return LoginService(username: username, password: password).call();
  }
}
