
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/BMI/BMI2.dart';
import 'package:learn/Calculate.dart';




class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen1(),
    );
  }
}

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen1> {
  double value = 100;
  String selectedGender = "";
  int age = 20;
  int Weight = 70;
  int currentIndex = 0;
  List<String > title=[
    "BMI Calculate ",
    "Calculate",
  ];
  List<Widget> Body = [
    HomeSceen2(),
    Calculate(),


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
            icon: Icon(Icons.person),
            label: "Profile  ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Calculate  ",
          ),

        ],
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            "${title[currentIndex]} ",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xFF1D1E33),
      ),
      backgroundColor: Color(0xFF0A0E21),
      body: Body[currentIndex],

    );
  }
}
