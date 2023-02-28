class Car {}

abstract class ParkingLot {
  void parkCar();

  void unParkCar();

  int getCapacity();

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

  @override
  double calculateFree(Car car) {
    throw Exception('free parking'); //!free parking
  }

  @override
  void doPayment(Car car) {
    throw Exception('free parking');//!free parking
  }
}
