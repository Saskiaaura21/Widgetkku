import 'package:flutter/material.dart';

class iniCheckB extends StatefulWidget {
  iniCheckB({super.key});

  @override
  _SwitchHomeState createState() => _SwitchHomeState();
}

class _SwitchHomeState extends State<iniCheckB> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini kiaa keren'),
      ),
      body: Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.blue,
          onChanged: (val) {
            setState(() {
              if (val != null) {
                isChecked = val;
              }
            });
          },
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          'Agree Term & Conditions',
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
    );
  }
}
