import 'package:flutter/material.dart';

class iniListp extends StatelessWidget {
  iniListp ({super.key});
  final List<String> categories = <String>['kiaa', 'be like', 'wadidawww'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Punya kia"),
          actions: const [],
        ),
        body: Container(
          child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 24,
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Text(
                      categories[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
