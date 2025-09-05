import 'package:flutter/material.dart';
import 'ScreenLogin.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool x = true;
  var name = TextEditingController();
  String title = "Welcome ";
  int currentIndex = 0;
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF1976D2), body: Login());
  }
}
