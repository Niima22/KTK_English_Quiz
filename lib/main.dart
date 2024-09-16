import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // Ensure this import points to the correct file where WelcomeScreen is defined

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomeScreen(), // Pointing to your WelcomeScreen as the home
      debugShowCheckedModeBanner: false, // Disables the debug banner
    );
  }
}
