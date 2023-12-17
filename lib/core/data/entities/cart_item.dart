class CartItem {
  final int? id;
  final int productVariationId;
  final int quantity;

  CartItem(
      {required this.id,
      required this.productVariationId,
      required this.quantity});
}
