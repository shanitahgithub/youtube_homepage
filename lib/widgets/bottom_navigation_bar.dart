// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   const CustomBottomNavigationBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Colors.white,
//       selectedItemColor: Colors.red,
//       unselectedItemColor: const Color.fromRGBO(158, 158, 158, 1),
//       items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.video_library), label: 'Shorts'),
//         BottomNavigationBarItem(icon: Icon(Icons.upload), label: 'Upload'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
//         BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'You'),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0; // Keep track of the selected index

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Update the selected index
    });

    // Here you can implement navigation logic based on index
    // For example:
    // if (index == 0) {
    //   Navigator.pushNamed(context, '/home');
    // } else if (index == 1) {
    //   Navigator.pushNamed(context, '/shorts');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.red,
      unselectedItemColor: const Color.fromARGB(242, 250, 248, 248),
      type: BottomNavigationBarType.fixed, // Ensures labels are always visible
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library), label: 'Shorts'),
        BottomNavigationBarItem(icon: Icon(Icons.upload), label: 'Upload'),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'You'),
      ],
      currentIndex: _currentIndex, // Set the current index
      onTap: _onItemTapped, // Call the method on tap
    );
  }
}
