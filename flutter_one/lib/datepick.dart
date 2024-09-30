import 'package:flutter/material.dart';

class iniDateP extends StatefulWidget {
  const iniDateP({super.key});

  @override
  _RadioHomeState createState() => _RadioHomeState();
}

class _RadioHomeState extends State<iniDateP> {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('DatePicker Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            debugPrint("pickedDate: $pickedDate");
          },
          child: TextFormField(
            initialValue: '2022-08-01',
            maxLength: 20,
            enabled: false, // Nonaktifkan agar user tidak bisa mengetik
            decoration: const InputDecoration(
              labelText: 'Birth date',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ),
              suffixIcon: Icon(Icons.date_range), // Gunakan Icons.date_range yang benar
              helperText: "What's your birth date?",
            ),
          ),
        ),
      ),
    );
  }
}