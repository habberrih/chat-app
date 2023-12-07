import 'dart:convert';

import 'package:chat_app/data/services/base_service.dart';

import '/config/app_config.dart';
import '/data/responses/login_response.dart';
import 'package:http/http.dart' as http;

class LoginService extends ServiceBase<LoginResponse> {
  final String username;
  final String password;

  LoginService({required this.username, required this.password});
  Future<LoginResponse> call() async {
    final result = await http.post(
      Uri.parse('${AppConfig.baseURL}/login'),
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );
    return LoginResponse.fromJson(jsonDecode(result.body));
  }
}
