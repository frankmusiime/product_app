import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_details_screen.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<Product> products = [
    Product(
      name: 'Pixel',
      description: 'Pixel is the most featureful phone ever',
      price: 800,
      color: Colors.blue,
    ),

    Product(
      name: 'Laptop',
      description: 'Laptop is the most productive development tool',
      price: 2000,
      color: Colors.green,
    ),

    Product(
      name: 'Tablet',
      description: 'Tablet is the most useful device for meetings',
      price: 1500,
      color: Colors.yellow,
    ),

    Product(
      name: 'Pendrive',
      description: 'Pendrive is the stylish phone ever',
      price: 100,
      color: Colors.deepOrange,
    ),

    Product(
      name: 'Floppy Drive',
      description: 'Floppy Drive is old storage technology',
      price: 50,
      color: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Navigation')),

      body: ListView.builder(
        itemCount: products.length,

        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],

            onTap: () {
              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailsScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
