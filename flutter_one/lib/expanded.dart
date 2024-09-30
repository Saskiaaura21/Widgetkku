import 'package:flutter/material.dart';

class iniExpand extends StatelessWidget {
  iniExpand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiaaa yare yare'),
      ),
    );
    Row(
      children: const [
        Icon(Icons.arrow_back),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'List kiaaa',
            style: TextStyle(fontSize: 16),
          ),
        )),
        Icon(
          Icons.check,
          color: Colors.blue,
        )
      ],
    );
  }
}
  