class Car {}

abstract class ParkingLot {
  void parkCar();

  void unParkCar();

  int getCapacity();
}

/// * segregation new interface
abstract class PaidParkingLot implements ParkingLot {
  double calculateFree(Car car);

  void doPayment(Car car);
}

class FreeParking implements ParkingLot {
  @override
  void parkCar() {}

  @override
  void unParkCar() {}

  @override
  int getCapacity() {
    return 0;
  }
}



