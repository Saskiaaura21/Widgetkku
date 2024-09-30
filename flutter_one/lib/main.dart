import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_one/bottomst.dart';
import 'package:flutter_one/btmnavbar.dart';
import 'package:flutter_one/center.dart';
import 'package:flutter_one/checkbox.dart';
import 'package:flutter_one/col.dart';
import 'package:flutter_one/datepick.dart';
import 'package:flutter_one/dialog.dart';
import 'package:flutter_one/drawer.dart';
import 'package:flutter_one/dropdown.dart';
import 'package:flutter_one/expanded.dart';
import 'package:flutter_one/grid.dart';
import 'package:flutter_one/navpush.dart';
import 'package:flutter_one/pad.dart';
import 'package:flutter_one/list.dart';
import 'package:flutter_one/radio.dart';
import 'package:flutter_one/row.dart';
import 'package:flutter_one/sized.dart';
import 'package:flutter_one/sliverappbar.dart';
import 'package:flutter_one/snackbar.dart';
import 'package:flutter_one/stack.dart';
import 'package:flutter_one/switch.dart';
import 'package:flutter_one/tabbar.dart';
import 'package:flutter_one/textfild.dart';
import 'package:flutter_one/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiaa',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 142, 18, 9)),
        useMaterial3: true,
      ),
      home: inirow(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        body: Container(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: [
              Icon(
                Icons.share,
                size: 32.0,
              ),
              Icon(
                Icons.favorite,
                size: 36.0,
                color: Colors.red,
              ),
              Text("aku suka gerry salut"),
              Image.asset(width: 200.0, "asset/gojo.jfif"),
              Image.network(
                "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/1/1c/Na_Jae-min_the_25th_DREAM_CONCERT.png"),
              )
            ],
          ),
        )
        );
  }
}
