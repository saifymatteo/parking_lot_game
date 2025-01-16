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
    return switch (this) {
      nissan => 'Nissan',
      tesla => 'Tesla',
      toyota => 'Toyota',
      mitsubushi => 'Mitsubushi',
      honda => 'Honda',
      mercedes => 'Mercedes',
      subaru => 'Subaru',
      proton => 'Proton',
      perodua => 'Perodua',
      hyundai => 'Hyundai',
      ford => 'Ford',
      bmw => 'BMW',
      lexus => 'Lexus',
      chevrolet => 'Chevrolet',
      dodge => 'Dodge',
      volkswagen => 'Volkswagen',
      kia => 'Kia',
      jeep => 'Jeep'
    };
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
