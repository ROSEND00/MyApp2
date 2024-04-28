import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/src/pages/home_screen.dart';

import 'favoritos_page.dart';
import 'search_page.dart';
import 'users_page.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int _selectedTab = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    FavoritosPage(),
    SearchPage(),
    UsersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Curved Navigation Bar"),
        centerTitle: true,
      ),
      body: Container(
        child: _pages[_selectedTab],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedTab,
        height: 60,
        items: <Widget>[
          _builNavItem(Icons.home, _selectedTab == 0),
          _builNavItem(Icons.favorite, _selectedTab == 1),
          _builNavItem(Icons.search, _selectedTab == 2),
          _builNavItem(Icons.person, _selectedTab == 3),
       
        ],
        //color de la barra de navegacion
        color: Colors.indigo,
        //Color de fondo de iconos
        buttonBackgroundColor: Colors.white,
        //Color de fondo detras de la barra
        backgroundColor: Colors.transparent,
        //curva de animacion
        animationCurve: Curves.easeInOut,
        //duracion de la animacion
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){
          setState(() {
            _selectedTab = index;
          });
        }
      ),
    );
  }
  Widget _builNavItem (IconData icon, bool isSelected){
    return Icon(icon,size: 30, color: isSelected ? Colors.red : Colors.amber, );
  }
}
