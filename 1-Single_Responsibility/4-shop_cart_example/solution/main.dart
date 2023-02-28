import '1_product.dart';
import '3_cart.dart';
import '4_invoice.dart';

void main(List<String> args) {
  Cart myCart = Cart();

  myCart.addToCart(Product(code: '123', price: 23, quantity: 10));
  SalesInvoice salesInvoice = SalesInvoice();

  salesInvoice.createInvoice(myCart, '2343');

  print(myCart.itemsCount);
}
