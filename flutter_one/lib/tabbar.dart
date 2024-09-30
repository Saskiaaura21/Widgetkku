import 'package:flutter/material.dart';

class iniTabbar extends StatefulWidget {
  const iniTabbar({super.key});

  @override
  _BottomnavigationbarHomeState createState() => _BottomnavigationbarHomeState(); // Mengembalikan state yang sesuai
}

class _BottomnavigationbarHomeState extends State<iniTabbar> with SingleTickerProviderStateMixin {
  late TabController _tabController; 

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); 
  }

  @override
  void dispose() {
    _tabController.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbar Widget'),
        bottom: TabBar(
          controller: _tabController, 
          tabs: const [
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
            Tab(
              icon: Icon(Icons.directions_ferry),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController, 
        children: const [
          Center(
            child: Text('tab 1'),
          ),
          Center(
            child: Text('tab 2'),
          ),
          Center(
            child: Text('tab 3'),
          ),
        ],
      ),
    );
  }
}