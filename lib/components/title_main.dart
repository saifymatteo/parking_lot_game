import 'package:flutter/material.dart';

class TitleMain extends StatelessWidget {
  const TitleMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Welcome to Parking Lot',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
