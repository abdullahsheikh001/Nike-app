import 'package:flutter/material.dart';

class Catagoryslider extends StatefulWidget {
  const Catagoryslider({super.key});

  @override
  State<Catagoryslider> createState() => _CatagorysliderState();
}

class _CatagorysliderState extends State<Catagoryslider> {
  final List<String> catagorylist = [
    "Nike",
    "Bata",
    "Adidas",
    "English Boothouse",
    "Sketchers",
    "Reebok"
  ];

  int selectedindex = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: catagorylist.asMap().entries.map((entry) {
            int index = entry.key;
            String category = entry.value; // Correct variable name

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedindex = index; // Correct use of the selectedindex variable
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: selectedindex == index ? Colors.blue : Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  category, // Correct use of the category variable
                  style: TextStyle(
                    color: selectedindex == index ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }).toList(), // Ensure the result is converted to a List
        ),
      ),
    );
  }
}
