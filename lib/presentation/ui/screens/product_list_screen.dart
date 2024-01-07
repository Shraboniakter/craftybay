import 'package:flutter/material.dart';

import '../widgets/product_card/product_card.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, this.category});

  final String? category;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category ?? 'Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.90,
                mainAxisSpacing: 8,
                crossAxisSpacing: 4),
            itemBuilder: (context, index) {
              return FittedBox(child: ProductCard());
            }),
      ),
    );
  }
}
