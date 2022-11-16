import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminLoginScreen extends StatelessWidget {
  const AdminLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     icon: const Icon(Icons.arrow_back_ios),
        //     iconSize: 20.0,
        //     onPressed: () => context.pop()),
        title: const Text("Login"),
      ),
      body: const SafeArea(
          child: Center(
        child: LoginWidget(),
      )),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: "Username"),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: "Password"),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(onPressed: () => _onSubmit(), child: const Text("Login"))
      ],
    );
  }

  void _onSubmit() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    print("username: $username password: $password");
  }
}
