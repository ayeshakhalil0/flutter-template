import 'package:flutter/material.dart';
import './app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.getRoutes(),
      builder: (context, child) {
        return Scaffold(
          body: child,
        );
      },
    );
  }
}
