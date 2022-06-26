import '../model/car.dart';

class ParkingLot {
  List<Car?> slots = [];

  ParkingLot({
    required int parkingSize,
  }) {
    slots.fillRange(0, parkingSize, null);
  }

  bool park(Car car) {
    if (slots.every((element) => element != null)) {
      return false;
    }

    for (int i = 0; i <= slots.length; i++) {
      final slot = slots[i];

      if (slot == null) {
        slots[i] = car;
        return true;
      }
    }

    return false;
  }

  bool remove(Car car) {
    if (slots.every((element) => element != car)) {
      return false;
    }

    for (int i = 0; i <= slots.length; i++) {
      final slot = slots[i];

      if (slot == car) {
        slots[i] = null;
        return true;
      }
    }

    return false;
  }

  List<Car?> get getSlots => slots;

  int get getSize => slots.length;

  int get getAvailable => slots.where((element) => element == null).length;

  bool get isFull => getAvailable == 0;
}
