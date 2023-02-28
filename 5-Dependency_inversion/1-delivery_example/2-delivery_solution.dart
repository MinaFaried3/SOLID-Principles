class Product {}

// * classes must depend on abstraction not details
abstract class DeliveryService {
  void deliveryProduct(Product product);
}

class DeliveryDriver implements DeliveryService {
  @override
  void deliveryProduct(Product product) {}
}

class DeliveryCompany {
  final DeliveryService deliveryService; //depend on abstraction

  DeliveryCompany(this.deliveryService);

  void sendProduct(Product product) {
    deliveryService.deliveryProduct(product);
  }
}
