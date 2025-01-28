import 'package:flutter/material.dart';

class MinistryScreen extends StatelessWidget {
  const MinistryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(child: Text('Welcome to the ministry Screen!')),
    );
  }
}
