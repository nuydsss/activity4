import 'package:flutter/material.dart';
import '../atoms/filled_action_button.dart';
import '../atoms/delete_icon_button.dart';
class ProductActionsColumn extends StatelessWidget {
  final VoidCallback onAddToCart;
  final VoidCallback onDelete;

  const ProductActionsColumn({
    super.key,
    required this.onAddToCart,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledActionButton(label: 'Add to Cart', onPressed: onAddToCart),
        const SizedBox(height: 6),
        DeleteIconButton(onPressed: onDelete),
      ],
    );
  }
}
