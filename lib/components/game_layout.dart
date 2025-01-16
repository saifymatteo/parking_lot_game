import 'package:flutter/material.dart';
import 'package:parking_lot_game/components/components.dart';
import 'package:provider/provider.dart';

import '../logic/logic.dart';
import '../model/car.dart';

class GameLayout extends StatelessWidget {
  const GameLayout({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    const tileHeight = 100;
    const tileWidth = 100;

    return Consumer<ParkingLot>(
      builder: (_, provider, __) {
        final countPortrait = constraints.maxWidth ~/ tileWidth;
        final countHorizontal = constraints.maxHeight ~/ tileWidth;

        return Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  constraints.maxWidth > 600 ? countHorizontal : countPortrait,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: tileWidth / tileHeight,
            ),
            itemCount: provider.getSize,
            itemBuilder: (BuildContext context, int index) {
              final car = provider.getSlots[index];
              index += 1;
              return InkWell(
                onTap: car != null ? () => _onTapPark(context, car) : null,
                splashColor: Colors.lightBlue,
                child: Card(
                  color: car != null ? Colors.red : Colors.green,
                  child: Center(
                    child: Text(
                      car == null
                          ? 'Slot $index'
                          : '${car.brand}\n${car.plate}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _onTapPark(BuildContext context, Car car) {
    final provider = context.read<ParkingLot>();
    if (provider.remove(car)) {
      showSnackBar(context, 'Successfully removed a car');
    }
  }
}
