import 'dart:math';

import 'package:flutter/material.dart';

import '../model/car.dart';

class ParkingLot extends ChangeNotifier {
  List<Car?> _slots = [];

  set setSlots(int parkingSize) {
    _slots.clear();
    _slots = List.filled(parkingSize, null, growable: true);
    notifyListeners();
  }

  bool park(Car car) {
    if (_slots.every((element) => element != null)) {
      return false;
    }

    final rngIndex = Random().nextInt(_slots.length);

    final slot = _slots[rngIndex];

    if (slot == null) {
      _slots[rngIndex] = car;
      notifyListeners();
      return true;
    }

    return park(car);
  }

  bool remove(Car car) {
    if (_slots.every((element) => element != car)) {
      return false;
    }

    for (int i = 0; i <= _slots.length; i++) {
      final slot = _slots[i];

      if (slot == car) {
        _slots[i] = null;
        notifyListeners();
        return true;
      }
    }

    return false;
  }

  List<Car?> get getSlots => _slots;

  int get getSize => _slots.length;

  int get getAvailable => _slots.where((element) => element == null).length;

  bool get isFull => getAvailable == 0;
}
