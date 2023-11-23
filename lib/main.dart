import 'package:flutter/material.dart';
import 'package:lara/screens/Profile.dart';
import 'package:lara/theme/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter lab',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const MyHomePage(),
    );
  }
}

// I actually don't know whether home widget should
// contain any state. In my case, I think it shouldn't
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}
