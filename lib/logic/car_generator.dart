import 'dart:math';

enum CarBrand {
  nissan,
  tesla,
  toyota,
  mitsubushi,
  honda,
  mercedes,
  subaru,
  proton,
  perodua,
  hyundai,
  ford,
  bmw,
  lexus,
  chevrolet,
  dodge,
  volkswagen,
  kia,
  jeep;

  String getString() {
    switch (this) {
      case nissan:
        return 'Nissan';
      case tesla:
        return 'Tesla';
      case toyota:
        return 'Toyota';
      case mitsubushi:
        return 'Mitsubushi';
      case honda:
        return 'Honda';
      case mercedes:
        return 'Mercedes';
      case subaru:
        return 'Subaru';
      case proton:
        return 'Proton';
      case perodua:
        return 'Perodua';
      case hyundai:
        return 'Hyundai';
      case ford:
        return 'Ford';
      case bmw:
        return 'BMW';
      case lexus:
        return 'Lexus';
      case chevrolet:
        return 'Chevrolet';
      case dodge:
        return 'Dodge';
      case volkswagen:
        return 'Volkswagen';
      case kia:
        return 'Kia';
      case jeep:
        return 'Jeep';
      default:
        throw UnimplementedError();
    }
  }
}

extension CarBrandExtension on CarBrand {
  static CarBrand generateRandomCarBrand() {
    final random = Random();
    return CarBrand.values[random.nextInt(CarBrand.values.length)];
  }
}

extension CarPlateExtension on CarBrand {
  static String generateRandomCarPlate() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    final random = Random();
    final prefix = String.fromCharCodes(
      Iterable.generate(
        3,
        (_) => chars.codeUnitAt(
          random.nextInt(chars.length),
        ),
      ),
    );
    final suffix = random.nextInt(8999) + 1000;
    return '$prefix-$suffix';
  }
}
