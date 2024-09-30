import 'package:flutter/material.dart';

class iniStack extends StatelessWidget {
  iniStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kiaa keren'),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: const [
          Icon(
            Icons.shopping_cart,
            size: 50,
          ),
          Positioned(
            top: -4.0,
            right: -4.0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                '5',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
