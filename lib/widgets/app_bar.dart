import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Icon(Icons.play_circle, color: Colors.red, size: 28),
        SizedBox(width: 8),
        Text('YouTube',
            style: TextStyle(
              color: Colors.black, // Text color set to black
              fontWeight: FontWeight.bold,
              // fontSize: 20,
            )),
      ],
    ),
    actions: const [
      Icon(
        Icons.search,
        color: Colors.black,
      ),
      SizedBox(width: 16),
      Icon(
        Icons.notifications,
        color: Colors.black,
      ),
      SizedBox(width: 16),
    ],
  );
}
