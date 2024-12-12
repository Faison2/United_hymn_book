import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hymbook/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: const SplashScreen(), // Set SplashScreen as the home screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home page after a 4-second delay
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display logo from assets
            Image.asset(
              'assets/logo.jpg', // Ensure the logo.jpg exists in the assets folder and is added in pubspec.yaml
              width: 200, // Adjust size as needed
              height: 200,
            ),
            const SizedBox(height: 10), // Space between logo and text
            Text(
              'U.A.A.F.I.C.A Hym Book',
              style: TextStyle(
                fontSize: 24, // Adjust font size
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

