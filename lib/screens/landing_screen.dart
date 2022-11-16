import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              const Expanded(child: Text("Logo")),
              TextButton(
                  onPressed: () => context.go('/terms'),
                  child: const Text("Terms")),
              TextButton(
                  onPressed: () => context.go('/login'),
                  child: const Text("Login")),
              TextButton(
                  onPressed: () => context.go('/admin'),
                  child: const Text("Admin"))
            ],
          ),
          const Text("Name"),
          const Text("Description"),
          TextButton(onPressed: () {}, child: const Text("CtMe")),
          const Text("Showroom"),
          const Text("Footer")
        ],
      )),
    ));
  }
}
