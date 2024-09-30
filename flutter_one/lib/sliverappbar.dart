import 'package:flutter/material.dart';

class iniNavPop extends StatelessWidget {
  iniNavPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiaa keren'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sliver app Bar'),
              background: FlutterLogo(),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: index.isOdd ? Colors.white : Colors.blue[200],
              height: 100,
              child: Center(
                child: Text(
                  '$index',
                  textScaleFactor: 5,
                ),
              ),
            );
          }, childCount: 20)
          ),
        ],
      ),
    );
  }
}
