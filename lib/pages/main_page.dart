import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttom Navigation Container'),
      ),
      body: Center(child: Text('Center Text')),
      bottomNavigationBar: BottomNavigationBar(
        items: const [ //! const
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}