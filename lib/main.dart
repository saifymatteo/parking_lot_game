import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_lot_game/logic/parking.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main()  {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ParkingLot(),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.jetBrainsMonoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const PageTitle(),
      ),
    );
  }
}
