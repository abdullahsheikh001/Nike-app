import 'package:flutter/material.dart';

class Sizewidget extends StatefulWidget{
  const Sizewidget({super.key});

  @override
  State<Sizewidget> createState() => _SizewidgetState();
}

class _SizewidgetState extends State<Sizewidget> {

  final List<int> sizelist = [ 
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50
  ];

  int indexselected = -1;
  @override
  Widget build(BuildContext context) {
    

    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row( 
              
              children:  sizelist.asMap().entries.map((count){ 
                      
                      int index = count.key;
                      int size = count.value;
      
                      return GestureDetector( 
                        onTap: (){

                          setState(() {
                            indexselected = index;
                          });
                        },
                        child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: indexselected == index ? Colors.blue : Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    size.toString(),  
                    style: TextStyle(
                      color: indexselected == index ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                      );
              }).toList()
      ),
    );
  }
}