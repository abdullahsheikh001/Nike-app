import 'package:flutter/material.dart';
 import 'package:nike_app/Model/seemoregridmodel.dart';

// ignore: must_be_immutable
class Seemoregrid extends StatelessWidget{
    Seemoregrid({super.key});

    List<Seemoregridmodel> gridpicsmore = [
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/45/92/44/45924476b8a9de86e2b890a18681f96c.jpg",
        pricing: "250.75",
        title: "Nike Zoom Dunk", discription: "The Nike Zoom Dunk combines classic Dunk styling with advanced Zoom Air cushioning for ultimate comfort and support. Its sleek design and premium materials offer a stylish and durable choice for everyday wear."),

    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/ba/26/3f/ba263f84e53ec131f8319d18c7e1fb2d.jpg",
        pricing: "163.65",
        title: "Dunk Low Retro", discription: "The Nike Dunk Low Retro brings back the iconic silhouette with updated materials and colors, offering a blend of vintage appeal and modern comfort. Its low-cut design and cushioned sole provide a timeless look and all-day wearability."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/ae/11/7c/ae117cc59de116fd1933b45c42fcefee.jpg",
        pricing: "66.99",
        title: "WMNS Dunk High", discription: "The Nike WMNS Dunk High features a high-top silhouette designed specifically for women, offering enhanced ankle support and a stylish, retro-inspired look. With premium materials and vibrant colorways, it combines comfort and fashion for everyday wear."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/d6/d8/94/d6d89441ff3fc7d2d4675d1c7541f637.jpg",
        pricing: "106.75",
        title: "DUNK LO WMNS", discription: "The Nike Dunk Lo WMNS delivers a low-profile design tailored for women, combining classic Dunk aesthetics with modern comfort. Its premium materials and versatile color options make it a stylish choice for any casual outfit."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/48/b3/4a/48b34a68db9c56058e4b5e5a72aa761a.jpg",
        pricing: "236.35",
        title: "Kobe 8 Protro", discription: "The Nike Kobe 8 Protro reimagines the original with enhanced performance features, including improved cushioning and lightweight construction. Its sleek design and modern upgrades make it a top choice for basketball enthusiasts and Kobe Bryant fans alike."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/736x/9f/f2/af/9ff2af6f4a4087c36d2a30861bf8962b.jpg",
        pricing: "160",
        title: "Air Vapormax Plus", discription: "The Nike Air Vapormax Plus fuses the classic Air Max Plus design with innovative VaporMax cushioning for unparalleled comfort and a futuristic look. Its hybrid construction offers a stylish, supportive fit perfect for both casual wear and athletic performance." ),
        
         Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/45/92/44/45924476b8a9de86e2b890a18681f96c.jpg",
        pricing: "250.75",
        title: "Nike Zoom Dunk", discription: "The Nike Zoom Dunk combines classic Dunk styling with advanced Zoom Air cushioning for ultimate comfort and support. Its sleek design and premium materials offer a stylish and durable choice for everyday wear."),

    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/ba/26/3f/ba263f84e53ec131f8319d18c7e1fb2d.jpg",
        pricing: "163.65",
        title: "Dunk Low Retro", discription: "The Nike Dunk Low Retro brings back the iconic silhouette with updated materials and colors, offering a blend of vintage appeal and modern comfort. Its low-cut design and cushioned sole provide a timeless look and all-day wearability."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/ae/11/7c/ae117cc59de116fd1933b45c42fcefee.jpg",
        pricing: "66.99",
        title: "WMNS Dunk High", discription: "The Nike WMNS Dunk High features a high-top silhouette designed specifically for women, offering enhanced ankle support and a stylish, retro-inspired look. With premium materials and vibrant colorways, it combines comfort and fashion for everyday wear."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/d6/d8/94/d6d89441ff3fc7d2d4675d1c7541f637.jpg",
        pricing: "106.75",
        title: "DUNK LO WMNS", discription: "The Nike Dunk Lo WMNS delivers a low-profile design tailored for women, combining classic Dunk aesthetics with modern comfort. Its premium materials and versatile color options make it a stylish choice for any casual outfit."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/564x/48/b3/4a/48b34a68db9c56058e4b5e5a72aa761a.jpg",
        pricing: "236.35",
        title: "Kobe 8 Protro", discription: "The Nike Kobe 8 Protro reimagines the original with enhanced performance features, including improved cushioning and lightweight construction. Its sleek design and modern upgrades make it a top choice for basketball enthusiasts and Kobe Bryant fans alike."),
    Seemoregridmodel(
        imageurl:
            "https://i.pinimg.com/736x/9f/f2/af/9ff2af6f4a4087c36d2a30861bf8962b.jpg",
        pricing: "160",
        title: "Air Vapormax Plus", discription: "The Nike Air Vapormax Plus fuses the classic Air Max Plus design with innovative VaporMax cushioning for unparalleled comfort and a futuristic look. Its hybrid construction offers a stylish, supportive fit perfect for both casual wear and athletic performance." ),
        ];

    

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( 
        backgroundColor: Colors.transparent,

        title: const Text(
                    "Popular",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          itemCount: gridpicsmore.length,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 4,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          itemBuilder: (context, index) {
            return Card(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  Expanded(
                    child: Image.network(
                      gridpicsmore[index].imageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          gridpicsmore[index].title,
                          style: const TextStyle(
                            color: Colors.black,  
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),   
                        Row(
                          children: [
                            Text(
                              '\$${gridpicsmore[index].pricing}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15
                              ),
                            ),
        
                            const SizedBox(width: 70,),
        
                            Material(
                              
                              color: Colors.blue,
                              shape: const CircleBorder(),
                              child: IconButton(
                                 
                                onPressed: (){}, icon: const Icon(Icons.add, color: Colors.white,)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
  
 