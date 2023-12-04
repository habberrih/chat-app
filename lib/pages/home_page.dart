import 'package:chat_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('5minuteflutter'),
        centerTitle: false,
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }
}

Widget _userItem() {
  return Row(
      children: [
        Image.asset(
          'assets/temp/me.jpeg',
          width: 48,
          height: 48,
        ),
        const SizedBox(
          width: 16,
        ),
        Text('Abdullah Habberrih'),
      ],
    );
}

List<Widget> mockUsersFromServer() {
  List<Widget> users = [];
  for(var i = 0; i< 500; i++){
    users.add(_userItem());
  }
  return users; 
}