import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Landing(),
    );
  }
}

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade400,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Center(
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Welcome to Parking Lot',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 80,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Pressed to Start'),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const PotraitView();
          }
        },
      ),
    );
  }
}

class PotraitView extends StatefulWidget {
  const PotraitView({
    Key? key,
  }) : super(key: key);

  @override
  State<PotraitView> createState() => _PotraitViewState();
}

class _PotraitViewState extends State<PotraitView> {
  late TextEditingController textEditingController;
  late FocusNode focusNode;

  @override
  void initState() {
    textEditingController = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String input = '';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Welcome to Parking Lot',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 80,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'How many parking slots you need?',
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 30),
                child: TextField(
                  focusNode: focusNode,
                  controller: textEditingController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: 'Enter desired number from 1-20',
                  ),
                  onChanged: (value) {
                    input = value;
                  },
                  onSubmitted: (value) {
                    log(input);
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (input.isEmpty) {
                    showSnackBar(context, 'Please enter a value');
                  }
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20)),
                child: const Text(
                  'Pressed to Start',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(text)));
}
