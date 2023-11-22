import 'package:flutter/material.dart';
import 'package:lara/screens/Profile.dart';

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
      theme: ThemeData(
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            //backgroundColor: MaterialStatePropertyAll<Color>(Colors.white)
          )
        ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 6, 132, 65)
          )
        ),
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.black,
            indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromARGB(255, 6, 132, 65),
                width: 2.0,
              )
            )
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 6, 132, 65)),
        useMaterial3: true,
      ),
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
