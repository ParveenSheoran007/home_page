import 'package:flutter/material.dart';

class CourseBar extends StatelessWidget {
  const CourseBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black54,
      unselectedItemColor: Colors.black54,
      showSelectedLabels: true,
      unselectedLabelStyle: const TextStyle(color: Colors.black54),
      unselectedFontSize: 14,
      unselectedIconTheme: const IconThemeData(
        color: Colors.black54,
        size: 20,
      ),
      items: const [
        BottomNavigationBarItem(icon: Icon(
          Icons.home
        ),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(
            Icons.file_copy,
        ),
          label: 'Subject',
        ),
        BottomNavigationBarItem(icon: Icon(
            Icons.leaderboard,
        ),
          label: 'Growing',
        ),
        BottomNavigationBarItem(icon: Icon(
            Icons.person,
        ),
          label: 'My',
        ),
      ],
    );
  }
}
