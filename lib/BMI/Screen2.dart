import 'package:flutter/material.dart';
import 'package:learn/BMI/BMI1.dart';
import 'package:learn/ScreenLogin.dart';
import 'package:learn/main.dart';
import 'resultbmi.dart';

class Screen2 extends StatelessWidget {
  final int height;
  final int weight;
  final username;

  Screen2({
    super.key,
    required this.height,
    required this.weight,
    required this.username,
  });

  double calcBMI() {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  BMIResult checkBMI() {
    calcBMI();
    if (calcBMI() < 18.5) {
      return BMIResult(
        anser: "Underweight",
        advice:
            "You are below the healthy range. Try to eat nutritious meals and gain some weight",
      );
    } else if (calcBMI() < 25) {
      return BMIResult(
        anser: "Normal",
        advice:
            "Great job! Your BMI is in the healthy range. Keep up your balanced diet and exercise",
      );
    } else if (calcBMI() < 30) {
      return BMIResult(
        anser: "Overweight",
        advice:
            "You are above the healthy range. Consider regular exercise and watch your diet",
      );
    } else {
      return BMIResult(
        anser: "Obese",
        advice:
            "Your BMI is too high. It's important to follow a healthier lifestyle and consult a doctor if needed",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = checkBMI();

    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF1D1E33),
        iconTheme: const IconThemeData(size: 35, color: Colors.white),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Text(
              "Welcome ${name.text}",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Container(
              width: 430,
              height: 550,
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Text(
                    result.anser,
                    style: TextStyle(fontSize: 65, color: Colors.green),
                  ),
                  SizedBox(height: 30),
                  Text(
                    calcBMI().toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 90,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      result.advice,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return HomeScreen1(username: name.text);
                    },
                  ),
                );
              },
              child: Container(
                height: 50,
                color: Colors.red[800],
                child: Center(
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
