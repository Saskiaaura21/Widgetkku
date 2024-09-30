import 'package:flutter/material.dart';

class iniDialog extends StatefulWidget {
  iniDialog({super.key});

  @override
  _RadioHomeState createState() => _RadioHomeState();
}

class _RadioHomeState extends State<iniDialog> {
  String sex = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini kiaa punya'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await showDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('info'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const [
                          Text('You order was placed'),
                        ],
                      ),
                    ),
                     actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Set warna tombol dialog menjadi biru
                      ),
                      onPressed: () {
                        Navigator.pop(context); 
                      },
                      child: const Text('okayyy'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('open Dialog'),
          ),
        ],
      ),
    );
  }
}
