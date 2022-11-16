import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.yellow,
                  width: 40.0,
                  height: 40.0,
                ),
                const Padding(padding: EdgeInsets.all(16)),
                Expanded(
                    child: Container(
                  color: Colors.brown,
                  width: 40,
                  height: 40,
                ))
              ],
            )
          ],
        ),
      ))),
    );
  }
}
