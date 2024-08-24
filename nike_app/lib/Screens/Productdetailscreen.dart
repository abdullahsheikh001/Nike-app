// ignore: file_names
import 'package:flutter/material.dart';
import 'package:nike_app/Model/Gridmodel.dart';
import 'package:nike_app/Widget/Colorwidget.dart';
import 'package:nike_app/Widget/Sizewidget.dart';

class Productdetailscreen extends StatelessWidget {
  const Productdetailscreen({super.key, required this.model});

  final Gridmodel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            children: [
              Image.asset("images/splash.png", height: 40),
              const SizedBox(width: 100),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.network(
                model.imageurl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.6),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          model.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "5.0",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "1154 Reviews",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        model.discription,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                   const   Row(
                        children:  [
                          Text(
                            "Select Color:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 10),
                          Colorwidget(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text(
                            "Size",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "EU US UK",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Sizewidget(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Price:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "\$${model.pricing}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
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
                            child: const Text(
                              "Add To Cart",
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
