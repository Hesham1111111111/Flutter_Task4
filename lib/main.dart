import 'package:flutter/material.dart';
import'ScreenLogin.dart';
import'Calculate.dart';
import'BMI1.dart';


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
    return MaterialApp(
      home: HomeScreen(),
    );
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


    List<Widget> Body = [
       HomeScreen1(),
      Calculate(),
      Login(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.deepPurple,
        currentIndex: currentIndex,
        onTap: (int x) {
          setState(() {
            currentIndex = x;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "BMI ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Calculate  ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile  ",
          ),
        ],
      ),
      backgroundColor: Color(0xFF1976D2),
      body:Body[currentIndex],

    );
  }
}
