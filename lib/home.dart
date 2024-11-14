import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mis_lab1/clothing_item.dart';

import 'details_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<ClothingItem> items = [
    ClothingItem(name: "T-Shirt", description: "Comfortable cotton t-shirt", price: 15, image: 'tshirt.jpg'),
    ClothingItem(name:"Jeans", price: 40, description: "Blue denim jeans", image:"jeans.jpg"),
    ClothingItem(name:"Jacket",price: 80, description: "Warm winter jacket", image:"jacket.jpg"),
   ClothingItem(name:"Sweater", price:25, description: "Cozy wool sweater", image:"sweater.jpg"),
   ClothingItem(name:"Sneakers",price: 50, description: "Stylish white sneakers", image:"sneakers.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "211008",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo[600],
        ),
      body:  GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(item: items[index]),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/${items[index].image}"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0), // Rounded corners
                        ),
                        width: double.infinity, // Makes the image fill the container
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        items[index].name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                          '${items[index].price} \$',
                          style: TextStyle(
                            fontSize: 15
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
