import '1_product.dart';
import '3_cart.dart';

void main(List<String> args) {
  Cart myCart = Cart();
  
  myCart.addToCart(Product(code: '123', price: 23, quantity: 10));
  myCart.createInvoice();
  
  print(myCart.itemsCount);
}
