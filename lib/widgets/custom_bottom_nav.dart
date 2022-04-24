import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined), label: 'Calendar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded), label: 'Stadistics'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined), label: 'User'),
      ],
    );
  }
}
