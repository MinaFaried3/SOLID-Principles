abstract class IOrder {
  //? this is SRP
  void processCashInvoice();

  void processCreditInvoice();

  void processOnlinePaymentInvoice();
}

/*
  !notice if you implement this methods
  !you will violate SRP ,OCP, DRY principles
  !what will happen if you add new payment method
*/

class CashOrder implements IOrder {
  @override
  void processCashInvoice() {
    //Done
  }

  @override
  void processCreditInvoice() {
    throw Exception('only cash method here'); //!only cash method here
  }

  @override
  void processOnlinePaymentInvoice() {
    throw Exception('only cash method here'); //!only cash method here
  }
}

class OnlineOrder implements IOrder {
  @override
  void processCashInvoice() {
    throw Exception('only online method here'); //!only online method here
  }

  @override
  void processCreditInvoice() {
    throw Exception('only online method here'); //!only online method here
  }

  @override
  void processOnlinePaymentInvoice() {
    //Done
  }
}
