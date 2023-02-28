abstract class IOrder {
  //?shared implementation
  /// ..................
  /// ..................
}

abstract class ICashOrder implements IOrder {
  void processCashInvoice();
}

abstract class IOnlineOrder implements IOrder {
  void processOnlinePaymentInvoice();
}

abstract class ICreditOrder implements IOrder {
  void processCreditInvoice();
}


//class deals with All ways
// like pay part as cash and part as Online ,part as Credit
abstract class IMultiWayOrder
    implements ICashOrder, IOnlineOrder, ICreditOrder {}
