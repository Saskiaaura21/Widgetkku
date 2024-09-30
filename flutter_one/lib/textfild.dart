import 'package:flutter/material.dart';

class iniTextF extends StatelessWidget {
  iniTextF({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiaa keren'),
      ),
      body: TextField(
        maxLength: 20,
        decoration: const InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(
            color: Colors.blueGrey,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          ),
          helperText: "What's your name?",
        ),
        onChanged: (value) {},
      ),
    );
  }
}
