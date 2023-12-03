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
        title: const Text('5minuteflutter'),
        centerTitle: true,
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: Container(),
    );
  }
}
