import '1_product.dart';
import '2_stock.dart';

class Cart {
  List<Product> cartProducts = [];

  void removeFromCart(Product product) {
    if (cartProducts.contains(product)) cartProducts.remove(product);
  }

  bool addToCart(Product product) {
    if (Stock.isAvailableQuantity(product)) {
      cartProducts.add(product);
      return true;
    }

    return false;
  }

  void clearCart() {
    cartProducts.clear();
  }

  int get itemsCount => cartProducts.length;


}
