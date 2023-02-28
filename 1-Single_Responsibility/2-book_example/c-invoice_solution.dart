import 'a-book_model.dart';

// 1- create invoice class with one reason to change 
class Invoice {
  Book book;
  int quantity;
  double totalPrice;
  double discountRate;
  double taxRate;

  Invoice({
    required this.book,
    required this.quantity,
    required this.totalPrice,
    required this.discountRate,
    required this.taxRate,
  });

  double calculateTotal() {
    double price = ((book.price - book.price * discountRate) * quantity);
    double priceWithTaxes = price * (1 + taxRate);
    return priceWithTaxes;
  }
}

// 2 - take printInvoice out of class Invoice
class InvoicePrinter {
  Invoice invoice;

  InvoicePrinter({
    required this.invoice,
  });

  void printInvoice() {
    print(
        '${invoice.quantity} x ${invoice.book.name}       ${invoice.book.price}\$');
    print('totalPrice x ${invoice.calculateTotal()}');
    print('discountRate x ${invoice.discountRate}\$');
    print('taxRate x ${invoice.taxRate}\$');
  }
}

// 3 - take saveToFile out of class Invoice
class InvoiceSaver {
  Invoice invoice;

  InvoiceSaver({
    required this.invoice,
  });

  void saveToFile(String filename) {}
}
