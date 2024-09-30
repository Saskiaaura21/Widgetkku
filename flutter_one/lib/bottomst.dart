import 'package:flutter/material.dart';

class iniBottomst extends StatelessWidget {
  iniBottomst({super.key});

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
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Your order was Placed'),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('okayy'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Open Bottomsheet')
              ),
        ],
      ),
    );
  }
}
