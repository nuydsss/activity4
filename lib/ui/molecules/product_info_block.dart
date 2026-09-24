import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../atoms/product_name_text.dart';
import '../atoms/product_category_text.dart';
import '../atoms/product_price_text.dart';
class ProductInfoBlock extends StatelessWidget {
  final Product product;
  const ProductInfoBlock({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductNameText(product.name),
        const SizedBox(height: 4),
        ProductCategoryText(product.category),
        const SizedBox(height: 4),
        ProductPriceText(product.price),
      ],
    );
  }
}
