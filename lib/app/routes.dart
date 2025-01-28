import 'package:flutter/material.dart';
import '../screens/home_page.dart';
import '../screens/donation_screen.dart';
import '../screens/ministries_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/sermons_screen.dart';
import '../screens/splash_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String sermons = '/sermons';
  static const String donation = '/donation';
  static const String ministry = '/ministry';
  static const String profile = '/profile';
  static const String splash = '/splash';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      sermons: (context) => const SermonsScreen(),
      donation: (context) => const DonationScreen(),
      profile: (context) => const ProfileScreen(),
      ministry: (context) => MinistryScreen(),
      splash: (context) => SplashScreen()
    };
  }
}
