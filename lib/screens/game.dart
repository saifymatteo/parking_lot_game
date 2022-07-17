import 'package:flutter/material.dart';

import '../components/components.dart';

class PageGame extends StatefulWidget {
  const PageGame({Key? key}) : super(key: key);

  @override
  State<PageGame> createState() => _PageGameState();
}

class _PageGameState extends State<PageGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.lightBlue.shade100,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.isNormalized) {
            if (constraints.maxWidth > 600) {
              return Center(
                child: Row(
                  children: [
                    Expanded(child: GameLayout(constraints: constraints)),
                    const Flexible(child: GameControl()),
                  ],
                ),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(child: GameLayout(constraints: constraints)),
                    const GameControl(),
                  ],
                ),
              );
            }
          }
          return const Text('Constraint not normalized');
        },
      ),
    );
  }
}
