import 'package:flutter/material.dart';
import '../screens/donation_screen.dart';
import '../screens/ministries_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/sermons_screen.dart';
import './landing_page.dart';
import '../app/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const LandingScreen(),
    const SermonsScreen(),
    const DonationScreen(),
    const MinistryScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.appColorMain,
        unselectedItemColor: AppColors.appColorSecondary,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home_outlined, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.mood_outlined, 1),
            label: 'Sermons',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.favorite, 2),
            label: 'Donation',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.music_note, 3),
            label: 'Ministries',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.account_circle, 4),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        color: _currentIndex == index
            ? AppColors.appColorMain
            : Colors.transparent,
      ),
      child: Icon(
        icon,
        size: 28,
        color:
            _currentIndex == index ? Colors.white : AppColors.appColorSecondary,
      ),
    );
  }
}
