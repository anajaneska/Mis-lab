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
    ClothingItem(name: "T-Shirt", description: "Comfortable cotton t-shirt", price: 15.0, image: 'tshirt.jpg'),
    ClothingItem(name:"Jeans", price: 40.0, description: "Blue denim jeans", image:"jeans.jpg"),
    ClothingItem(name:"Jacket",price: 80.0, description: "Warm winter jacket", image:"jacket.jpg"),
   ClothingItem(name:"Sweater", price:25.0, description: "Cozy wool sweater", image:"sweater.jpg"),
   ClothingItem(name:"Sneakers",price: 50.0, description: "Stylish white sneakers", image:"sneakers.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("211008"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 4),
            child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(item: items[index]),
                      ),
                    );
                  },
                  title: Text(items[index].name),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/${items[index].image}"),
                  ),
                  trailing: Text('${items[index].price.toString()} \$'),
                )
            ),
          );
        },
      ),
    );
  }
}
