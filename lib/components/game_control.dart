import 'package:flutter/material.dart';
import 'package:parking_lot_game/components/components.dart';
import 'package:parking_lot_game/logic/logic.dart';
import 'package:parking_lot_game/model/car.dart';
import 'package:provider/provider.dart';

class GameControl extends StatelessWidget {
  const GameControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ParkingLot>(
      builder: (_, provider, __) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Colors.black45,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Text(
                        'Parking Lot Software Inc.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(color: Colors.white),
                          children: [
                            const TextSpan(text: 'Available slots: '),
                            TextSpan(
                              text: '${provider.getAvailable}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () =>
                      !provider.isFull ? _onPressPark(context) : null,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    backgroundColor:
                        provider.isFull ? Colors.red : Colors.green,
                  ),
                  child: const Text(
                    'PARK!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Icon(
                Icons.drive_eta_rounded,
                size: 50,
                color: Colors.red,
              ),
              const Text(
                'Click on a busy parking slot to unpark the car',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }

  void _onPressPark(BuildContext context) {
    final provider = context.read<ParkingLot>();
    final brand = CarBrandExtension.generateRandomCarBrand();
    final plate = CarPlateExtension.generateRandomCarPlate();

    final Car car = Car(brand: brand.getString(), plate: plate);
    if (provider.park(car)) {
      showSnackBar(context, 'Park successful!');
    } else if (provider.isFull) {
      showSnackBar(context, 'Parking lot is full');
    }
  }
}
