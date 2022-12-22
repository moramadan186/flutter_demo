import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;
  const MyAppBar({required this.title, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.arrow_forward_sharp),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
