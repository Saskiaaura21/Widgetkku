import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class iniGrid extends StatelessWidget {
  iniGrid ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiaa Widget'),
      ),
      body: Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 175 / 240,
            mainAxisSpacing: 14,
            crossAxisSpacing: 12,
            children: [
              ...List.generate(
                6,
                (index) => Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset.zero,
                      blurRadius: 14.0,
                      ),
                    ],
                    ),
                  ),
                ),
            ],
          ),
      )
    );
  }
}