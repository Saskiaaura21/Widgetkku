import 'package:flutter/material.dart';

class iniAspect extends StatelessWidget {
  iniAspect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiaa anak org'),
      ),
      body: AspectRatio(
        aspectRatio: 180/240,
        child: Container(
          color: Colors.purple,
        ),
        )
    );
  }
}
