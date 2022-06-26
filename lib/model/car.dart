import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';

@Freezed()
class Car with _$Car {
  const factory Car({
    required String model,
    required String plate,
  }) = _Car;
}
