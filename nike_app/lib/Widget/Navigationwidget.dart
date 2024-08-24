import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navigationwidget extends StatelessWidget{
  const Navigationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    

    return CurvedNavigationBar(
      color: Colors.white,
      backgroundColor: Colors.blue,
      items: [
      Icon(Icons.home),
      Icon(Icons.shopping_cart),
      Icon(Icons.settings),
      Icon(Icons.person),
    ]);
  }
}