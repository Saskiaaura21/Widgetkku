import 'package:flutter/material.dart';

class iniNavPop extends StatelessWidget {
  iniNavPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiaa keren'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
              Navigator.of(context).pop();
              },
              child: const Text('go back (pop)'),
              ),
          ],
        ),
      ),
    );
  }
}
