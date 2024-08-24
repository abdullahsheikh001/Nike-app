import 'package:flutter/material.dart';
 
class Colorwidget extends StatefulWidget{
  const Colorwidget({super.key});

  @override
  State<Colorwidget> createState() => _ColorwidgetState();
}

class _ColorwidgetState extends State<Colorwidget> {

  final List<String> colorlist = [ 

    "Red", "Green", "Blue"
  ];

  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: colorlist.asMap().entries.map((entry) {
            int index = entry.key;
            String category = entry.value;  

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedindex = index;  
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: selectedindex == index ? Colors.blue : Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  category,  
                  style: TextStyle(
                    color: selectedindex == index ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }).toList(),  
        ),
      ),
    );
  }
}