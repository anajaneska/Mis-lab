import 'package:flutter/material.dart';
import 'clothing_item.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.item});

  final ClothingItem item;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/${item.image}"),
            SizedBox(height: 16),
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              item.description,
              style: TextStyle(fontSize: 16),
            ),
        SizedBox(height: 16),
        Text(
          'Price: \$${item.price.toString()}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          )
        )],
        ),
      ),
    );
  }
}
