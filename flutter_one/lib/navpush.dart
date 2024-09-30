import 'package:flutter/material.dart';
import 'package:flutter_one/navpop.dart';

class iniNavPush extends StatelessWidget {
  iniNavPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navpunya kia'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
                  return iniNavPop();
                }));
              }, 
              child: const Text('Go next page'),
              ),
          ],
        ),
      ),
    );
  }
}
