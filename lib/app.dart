import 'package:flutter/material.dart';
import 'package:flexindagroove/screens/landing_screen.dart';
import 'package:flexindagroove/screens/terms_screen.dart';
import 'package:flexindagroove/screens/admin_login_screen.dart';
import 'package:flexindagroove/screens/admin_panel_screen.dart';
import 'package:go_router/go_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: "ManzoDev",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const LandingScreen(),
        routes: [
          GoRoute(
            path: 'terms',
            builder: (context, state) => const TermScreen(),
          ),
          GoRoute(
            path: 'login',
            builder: (context, state) => const AdminLoginScreen(),
          ),
          GoRoute(
            path: 'admin',
            builder: (context, state) => const AdminPanelScreen(),
            redirect: (context, state) {
              const shouldGoNext = false;
              if (shouldGoNext) {
                return '/admin';
              } else {
                return "/login";
              }
            },
          ),
        ]),
  ],
);
