import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text("Bienvenido a Usuarios",style: TextStyle(fontSize: 25)),
      ),
    );
  }
}