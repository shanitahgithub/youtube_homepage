import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const YouTubeApp());
}

class YouTubeApp extends StatelessWidget {
  const YouTubeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube Homepage',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeScreen(),
    );
  }
}
