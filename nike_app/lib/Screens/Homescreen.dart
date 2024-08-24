import 'package:flutter/material.dart';
import 'package:nike_app/Model/Gridmodel.dart';
import 'package:nike_app/Screens/Productdetailscreen.dart';
import 'package:nike_app/Screens/Seemoregrid.dart';
import 'package:nike_app/Widget/Drawerwidget.dart';
import 'package:nike_app/Widget/Gridviewwidget.dart';
import 'package:nike_app/Widget/Navigationwidget.dart';
import 'package:nike_app/Widget/catagoryslider.dart';
import 'package:nike_app/Widget/sliderbanner.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  List<Gridmodel> gridpics = [
    Gridmodel(
        imageurl:
            "https://i.pinimg.com/564x/45/92/44/45924476b8a9de86e2b890a18681f96c.jpg",
        pricing: "250.75",
        title: "Nike Zoom Dunk", discription: "The Nike Zoom Dunk combines classic Dunk styling with advanced Zoom Air cushioning for ultimate comfort and support. Its sleek design and premium materials offer a stylish and durable choice for everyday wear."),

    Gridmodel(
        imageurl:
            "https://i.pinimg.com/564x/ba/26/3f/ba263f84e53ec131f8319d18c7e1fb2d.jpg",
        pricing: "163.65",
        title: "Dunk Low Retro", discription: "The Nike Dunk Low Retro brings back the iconic silhouette with updated materials and colors, offering a blend of vintage appeal and modern comfort. Its low-cut design and cushioned sole provide a timeless look and all-day wearability."),
    Gridmodel(
        imageurl:
            "https://i.pinimg.com/564x/ae/11/7c/ae117cc59de116fd1933b45c42fcefee.jpg",
        pricing: "66.99",
        title: "WMNS Dunk High", discription: "The Nike WMNS Dunk High features a high-top silhouette designed specifically for women, offering enhanced ankle support and a stylish, retro-inspired look. With premium materials and vibrant colorways, it combines comfort and fashion for everyday wear."),
    Gridmodel(
        imageurl:
            "https://i.pinimg.com/564x/d6/d8/94/d6d89441ff3fc7d2d4675d1c7541f637.jpg",
        pricing: "106.75",
        title: "DUNK LO WMNS", discription: "The Nike Dunk Lo WMNS delivers a low-profile design tailored for women, combining classic Dunk aesthetics with modern comfort. Its premium materials and versatile color options make it a stylish choice for any casual outfit."),
    Gridmodel(
        imageurl:
            "https://i.pinimg.com/564x/48/b3/4a/48b34a68db9c56058e4b5e5a72aa761a.jpg",
        pricing: "236.35",
        title: "Kobe 8 Protro", discription: "The Nike Kobe 8 Protro reimagines the original with enhanced performance features, including improved cushioning and lightweight construction. Its sleek design and modern upgrades make it a top choice for basketball enthusiasts and Kobe Bryant fans alike."),
    Gridmodel(
        imageurl:
            "https://i.pinimg.com/736x/9f/f2/af/9ff2af6f4a4087c36d2a30861bf8962b.jpg",
        pricing: "160",
        title: "Air Vapormax Plus", discription: "The Nike Air Vapormax Plus fuses the classic Air Max Plus design with innovative VaporMax cushioning for unparalleled comfort and a futuristic look. Its hybrid construction offers a stylish, supportive fit perfect for both casual wear and athletic performance." ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Ensuring a white background
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 150,
            ),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.vectorstock.com/i/1000x1000/32/09/user-sign-icon-person-symbol-human-avatar-vector-12693209.webp"),
                radius: 30,
              ),
            )
          ],
        ),
      ),
      drawer: const Drawerwidget(),
      bottomNavigationBar: const Navigationwidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.black), // Ensuring text is visible
                  controller: searchController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.black), // Adjusting border color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Search Here",
                    labelStyle: const TextStyle(color: Colors.black),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, color: Colors.black),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        searchController.clear();
                      },
                      icon: const Icon(Icons.clear, color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Sliderbanner(),
              const SizedBox(height: 30),
              const Text(
                "Category",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              const Catagoryslider(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>   Seemoregrid(),
                          ));
                    },
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: gridpics.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Productdetailscreen(
                            model: gridpics[index],
                          ),
                        ),
                      );
                    },
                    child: Gridviewwidget(model: gridpics[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
