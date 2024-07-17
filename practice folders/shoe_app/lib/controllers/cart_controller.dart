class Product {
  final String imagePath;
  final String title;
  final double price;
  final double oldPrice;

  Product({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.oldPrice,
  });
}

class CartController {
  static List<Product> cartItems = [];

  static void addToCart(Product product) {
    cartItems.add(product);
  }
}
