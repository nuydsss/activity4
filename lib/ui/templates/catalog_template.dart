import 'package:flutter/material.dart';
import '../atoms/heading_text.dart';

class CatalogTemplate extends StatelessWidget {
  final Widget catalogSlot;
  final Widget formSlot;

  const CatalogTemplate({
    super.key,
    required this.catalogSlot,
    required this.formSlot,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingText('Messy Catalog', color: Colors.white),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalogSlot,
            const Divider(height: 32, thickness: 1),
            const HeadingText('Add New Product'),
            const SizedBox(height: 12),
            formSlot,
          ],
        ),
      ),
    );
  }
}
