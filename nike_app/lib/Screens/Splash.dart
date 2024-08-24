import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nike_app/Screens/Homescreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>    const  Homescreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Image.asset("images/splash.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Just Do It",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 45),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "The Best Shoe App Ever",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.grey.withOpacity(0.7)),
          )
        ],
      ),
    );
  }
}
