import 'package:flutter/material.dart';

class iniSized extends StatelessWidget {
  iniSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kiaa gen z'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Size",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            "height 20cm",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.yellow,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 2.0),
          Text(
            "Widht 60 cm",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
