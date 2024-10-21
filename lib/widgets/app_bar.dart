import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    title: const Row(
      children: [
        Icon(Icons.play_circle, color: Colors.red, size: 28),
        SizedBox(width: 8),
        Text('YouTube',
            style: TextStyle(
              color: Colors.white, // Text color set to black
              fontWeight: FontWeight.bold,
              // fontSize: 20,
            )),
      ],
    ),
    actions: const [
      Icon(
        Icons.search,
        color: Colors.white,
      ),
      SizedBox(width: 16),
      Icon(
        Icons.notifications,
        color: Colors.white,
      ),
      SizedBox(width: 16),
    ],
  );
}
