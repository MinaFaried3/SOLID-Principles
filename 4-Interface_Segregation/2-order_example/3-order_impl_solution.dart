import '2-order_interfaces_solution.dart';

class CashOrder implements ICashOrder {
  @override
  void processCashInvoice() {
    //Done
  }
}

class OnlineOrder implements IOnlineOrder {
  @override
  void processOnlinePaymentInvoice() {
    //Done
  }
}

class CreditOrder implements ICreditOrder {
  @override
  void processCreditInvoice() {
    //Done
  }
}

class MultiWayOrder implements IMultiWayOrder {
  @override
  void processCashInvoice() {
    //Done
  }

  @override
  void processCreditInvoice() {
    //Done
  }

  @override
  void processOnlinePaymentInvoice() {
    //Done
  }
}
