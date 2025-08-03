import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';

@freezed
sealed class Car with _$Car {
  factory Car({
    required String brand,
    required String plate,
  }) = _Car;
}
