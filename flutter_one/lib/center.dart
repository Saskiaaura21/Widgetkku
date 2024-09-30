import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class iniAspect extends StatelessWidget {
  iniAspect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiaa Widget'),
      ),
      body: Center(
    child: ElevatedButton(
      onPressed: () {}, 
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Colors.grey[20],
      elevation: 5.0,
    ),
    child: Text(
      "add to cart".toUpperCase(),
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    )
  )
    );
  }
}