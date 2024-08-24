import 'package:flutter/material.dart';
import 'package:nike_app/Model/Gridmodel.dart';

class Gridviewwidget extends StatelessWidget {
  const Gridviewwidget({super.key, required this.model});

  final Gridmodel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              model.imageurl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: const TextStyle(
                    color: Colors.black, // Ensured visibility
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10), // Added spacing between title and price
                Row(
                  children: [
                    Text(
                      '\$${model.pricing}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 50),
                    Material(
                      color: Colors.blue,
                      shape: const CircleBorder(),
                      child: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text("Item Added In The Cart"),
                                  action: SnackBarAction(
                                    label: "Undo",
                                    onPressed: () {
                                       
                                    },
                                  ),
                                ),
                              );
                        },
                        icon: const Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
