class Product {}

class DeliveryDriver {
  void deliveryProduct(Product product) {}
}

class DeliveryCompany {
  void sendProduct(Product product) {
    //!high level of dependency here
    DeliveryDriver deliveryDriver = DeliveryDriver();

    deliveryDriver.deliveryProduct(product);
  }
}
