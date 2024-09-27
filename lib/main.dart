import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();
  Color _color = Colors.white;

  void _changeColor() {
    // The red, green and blue use 8 bits each, which have integer values from 0 to 255.
    // This makes 256*256*256=16777216 possible colors.
    setState(() {
      _color = Color.fromARGB(
        255, //_random.nextInt(256),
        _random.nextInt(256), // Value is >= 0 and < 256
        _random.nextInt(256), // Value is >= 0 and < 256
        _random.nextInt(256), // Value is >= 0 and < 256
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: _changeColor,
        child: Container(
          color: _color,
          child: const Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
