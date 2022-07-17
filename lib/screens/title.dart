import 'package:flutter/material.dart';

import '../components/components.dart';

class PageTitle extends StatefulWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  State<PageTitle> createState() => _PageTitleState();
}

class _PageTitleState extends State<PageTitle> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.isNormalized) {
            if (constraints.maxWidth > 600) {
              return Center(
                child: Row(
                  children: [
                    const TitleMain(),
                    TitleButton(textEditingController: _textEditingController),
                  ],
                ),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TitleMain(),
                  TitleButton(textEditingController: _textEditingController),
                ],
              );
            }
          }
          return const Text('Constraint not normalized');
        },
      ),
    );
  }
}
