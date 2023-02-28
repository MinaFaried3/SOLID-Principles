import '1_product.dart';
import '2_stock.dart';

class Cart {
  List<Product> cartProducts = [];

  void removeFromCart(Product product) {
    if (cartProducts.contains(product)) cartProducts.remove(product);
  }

  bool addToCart(Product product) {
    //check available quantity
    int quantityInStock = Stock.products
        .firstWhere((stockProduct) => stockProduct.code == product.code)
        .quantity;

    if (quantityInStock >= product.quantity) {
      cartProducts.add(product);
      return true;
    }

    return false;
  }

  void clearCart() {
    cartProducts.clear();
  }

  int get itemsCount => cartProducts.length;

  void createInvoice() {
    //calc total price
    int totalPrice = 0;
    cartProducts.forEach((e) => totalPrice + e.price);

    //get customer data
    //create invoice
    //save to data base

    //print invoice
    //send invoice to customer email
  }
}
