import '3_cart.dart';

class SalesInvoice {
  void createInvoice(Cart cart, String id) {
    //calc total price
    int totalPrice = 0;
    cart.cartProducts.forEach((e) => totalPrice + e.price);

    //get customer data
    //create invoice
    //save to data base

    PrintManager.printInvoice(cart, id);
    EmailService.sendEmail(Email());
  }
}

class PrintManager {
  static void printInvoice(Cart cart, String id) {
    //print
  }
}

class Email {}

class EmailService {
  static void sendEmail(Email email) {
    //send email to customer
  }
}
