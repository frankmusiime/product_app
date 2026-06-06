import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),

      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: product.color,

            alignment: Alignment.center,

            child: Text(
              product.name.toLowerCase(),
              style: const TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),

          const SizedBox(height: 30),

          Text(
            product.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Text(product.description),

          const SizedBox(height: 20),

          Text('Price: ${product.price}', style: const TextStyle(fontSize: 20)),

          const SizedBox(height: 30),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.star_border, color: Colors.red),
              SizedBox(width: 15),
              Icon(Icons.star_border, color: Colors.red),
              SizedBox(width: 15),
              Icon(Icons.star_border, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}
