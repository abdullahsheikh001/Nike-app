import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade100,
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset(
              "images/splash.png",
              color: Colors.blue,
            ),
          ),
           
           const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.home, color: Colors.black,),
              title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
             ),
             
           ),

           const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.info, color: Colors.black,),
              title: Text("About", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
             ),
             
           ),

           const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.shopping_cart, color: Colors.black,),
              title: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
             ),
             
           ),


            const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.logout, color: Colors.black,),
              title: Text("Logout", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
             ),
             
           ),


        ],
      ),
    );
  }
}
