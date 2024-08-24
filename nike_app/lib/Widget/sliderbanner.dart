import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class Sliderbanner extends StatefulWidget {
  const Sliderbanner({super.key});

  @override
  State<Sliderbanner> createState() => _SliderbannerState();
}

class _SliderbannerState extends State<Sliderbanner> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 180,  
      child:  ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
            child: AnotherCarousel(
              images: const [
                NetworkImage("https://i.pinimg.com/564x/5d/33/d3/5d33d36c83473c9e7487297e0b5b5fdc.jpg"),
                 NetworkImage("https://i.pinimg.com/736x/61/2d/4f/612d4f19f227fdcaa302a8b55a0a4fb6.jpg"),
                  NetworkImage("https://i.pinimg.com/564x/89/c5/dc/89c5dc61548e87025ab1c8d3126d3103.jpg"),
              ],
              
              dotSize: 6,
              indicatorBgPadding: 5.0,
              boxFit: BoxFit.cover,  
            ),
          ),
      ),
       
    );
  }
}
