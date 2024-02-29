import 'package:flutter/material.dart';
import 'Screen/profilescreen.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  MyBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Colors.black,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration_rounded),
          backgroundColor: Colors.black,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          backgroundColor: Colors.black,
          label: '',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.red,
      backgroundColor: Colors.black,
      onTap: (index) {
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        } else {
          onTap(index);
        }
      },
    );
  }
}
