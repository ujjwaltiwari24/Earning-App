import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const EarningApp());
}

class EarningApp extends StatelessWidget {
  const EarningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Earning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF0B2447),
        scaffoldBackgroundColor: const Color(0xFF081A45),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xFF0B2447),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          elevation: 10,
        ),
      ),
      home: const LoginScreen(), // Start with LoginScreen
    );
  }
}
