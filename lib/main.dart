import 'package:flutter/material.dart';
import 'package:quiz_app/main_screen.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: Scaffold(
      body: MainScreen(
        Color.fromARGB(255, 65, 20, 124),
        Color.fromARGB(255, 67, 22, 133),
      ),
    ),
  ));
}
