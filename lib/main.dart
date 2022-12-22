import 'package:flutter/material.dart';
import 'home_screen.dart';

// import 'dart:developer';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app',
      home: SafeArea(
        child: HomeScreen(),
      ),
    ),
  );
}
