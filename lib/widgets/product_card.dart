import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),

      child: InkWell(
        onTap: onTap,

        child: Row(
          children: [
            Container(
              width: 140,
              height: 120,
              color: product.color,

              alignment: Alignment.center,

              child: Text(
                product.name.toLowerCase(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 5),

                    Text(product.description),

                    const SizedBox(height: 5),

                    Text('Price: ${product.price}'),

                    const SizedBox(height: 10),

                    const Row(
                      children: [
                        Icon(Icons.star_border, color: Colors.red),
                        Icon(Icons.star_border, color: Colors.red),
                        Icon(Icons.star_border, color: Colors.red),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
