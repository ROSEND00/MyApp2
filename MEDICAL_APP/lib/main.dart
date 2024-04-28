import 'package:flutter/material.dart';
import 'package:medical_app/src/pages/home_screen.dart';
import 'package:medical_app/src/pages/splash_screen.dart';

import 'src/pages/inicio_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "inicio",
      routes: {
        "splash":(context) => const SplashScreen(),
        "home":(context) => const HomeScreen(),
        "inicio":(context) => const InicioPage(),
      }
    );
  }
}