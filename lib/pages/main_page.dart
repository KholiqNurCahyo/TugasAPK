import 'package:flutter/material.dart';
import 'home_page.dart';
import 'leaderboard_page.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // 🔥 LIST HALAMAN
  final List<Widget> _pages = [
    const HomePage(),
    const LeaderboardPage(),
    const ProfilePage(),
  ];

  // 🔥 HANDLE TAP NAVBAR (AMAN)
  void _onItemTapped(int index) {
    if (index < _pages.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 🔥 SAFETY (biar gak crash kalau index kacau)
    if (_selectedIndex >= _pages.length) {
      _selectedIndex = 0;
    }

    return Scaffold(
      // 🔥 HALAMAN AKTIF (TIDAK RELOAD)
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),

      // 🔥 NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,

        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,

        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: "Leaderboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}