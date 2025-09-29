import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ProductCard(
          productName: 'Silksong',
          price: 7.99,
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final double price;

  const ProductCard({
    super.key,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100,
        height: 50,
        color: Colors.redAccent,
        child: Column(
          children: [
            Text(productName),
            Text('\$$price'),
          ],
        ),
      ),
    );
  }
}
