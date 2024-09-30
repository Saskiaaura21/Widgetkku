import 'package:flutter/material.dart';

class iniSwitch extends StatefulWidget {
  const iniSwitch({super.key});

  @override
  _SwitchHomeState createState() => _SwitchHomeState();
}

class _SwitchHomeState extends State<iniSwitch> {
  bool isOn = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('punya kia switch'),
      ),
      body: Row(
        children: [
          const Text('Connect Instagram'),
          const SizedBox(
            width: 8,
          ),
          Switch(
            value: isOn,
            onChanged: (bool value) {
              setState(() {
                isOn = value; 
              });
            },
          ),
        ],
      ),
    );
  }
}