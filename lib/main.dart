import 'package:flutter/material.dart';
import 'home_screen.dart';

// import 'dart:developer';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app',
      home: SafeArea(
        child: HomeScreen(),
      ),
    ),
  );
}
