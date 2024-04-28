import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text("Bienvenido a HomeScreen",style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
