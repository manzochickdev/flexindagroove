import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermScreen extends StatelessWidget {
  const TermScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     icon: const Icon(Icons.arrow_back_ios),
        //     iconSize: 20.0,
        //     onPressed: () => context.pop()),
        title: const Text("Terms"),
      ),
      body: const SafeArea(
          child: Center(
        child: Text("Terms"),
      )),
    );
  }
}
