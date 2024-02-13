import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.deepOrangeAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: const Center(
            child: Text(
              'Hello',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
            ),
          ),
        ),
      ),
    ),
  );
}