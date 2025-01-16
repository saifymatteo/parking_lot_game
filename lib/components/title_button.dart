import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parking_lot_game/components/components.dart';
import 'package:parking_lot_game/logic/parking.dart';
import 'package:provider/provider.dart';

import '../screens/screens.dart';

class TitleButton extends StatefulWidget {
  const TitleButton({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  State<TitleButton> createState() => _TitleButtonState();
}

class _TitleButtonState extends State<TitleButton> {
  // -------------------------------- PROPERTIES -------------------------------
  late FocusNode _focusNode;

  // --------------------------------- METHODS ---------------------------------
  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  final _maxParking = 100;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'How many parking slots you need?',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 30),
              child: TextField(
                focusNode: _focusNode,
                controller: widget.textEditingController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TextInputFormatter.withFunction(
                    (oldValue, newValue) {
                      final current = int.tryParse(newValue.text);

                      if (current != null && current > _maxParking) {
                        return oldValue;
                      }

                      return newValue;
                    },
                  ),
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Enter desired number from 1-$_maxParking',
                ),
                onSubmitted: (_) => _onSubmitSlots(
                  widget.textEditingController.text,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => _onSubmitSlots(
                widget.textEditingController.text,
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'Pressed to Start',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSubmitSlots(String input) {
    if (input.isEmpty) {
      showSnackBar(context, 'Please enter a number');
    } else if (int.tryParse(input) == null) {
      showSnackBar(context, 'Please enter a valid number');
    } else if (int.parse(input) > _maxParking) {
      showSnackBar(context, 'Please enter a number range from 1-$_maxParking');
    } else {
      final provider = context.read<ParkingLot>();
      provider.setSlots = int.parse(input);
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => const PageGame(),
        ),
      );
    }
  }
}
