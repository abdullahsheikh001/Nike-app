import 'package:flutter/material.dart';
 import 'package:nike_app/Screens/Splash.dart';
  
void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
           useMaterial3: true),
          home:   const Splash(),
    );
  }
}
