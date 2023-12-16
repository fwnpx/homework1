import 'dart:math';

import 'package:flutter/material.dart';

// Top-level function
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  AppBar _buildAppBar() {
    var firstName = 'Wannaporn';
    var lastName = 'Onsamlee';
    var age = 22;

    // String interpolation
    return AppBar(
      title: Text('$firstName $lastName, age: $age'),
    );
  }

  Widget _buildPageBody() {
    List<String> image = [
      'assets/images/lovepik-seawater-png-image_401259758_wh1200.png',
      'assets/images/sky.png',
      'assets/images/R.png'
    ];
    List<String> word = ['Sea', 'Sky', 'Mountain'];
    Random random = Random();

    // Generate a random number between 1 and 3
    int randomNumber = random.nextInt(2) + 1;

    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image[randomNumber],
            width: 200.0,
            fit: BoxFit.contain,
          ),
          Text(
            word[randomNumber],
            // Named parameter
            style: TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            // Named parameter
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // Method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildPageBody(),
      ),
    );
  }
}
