import 'package:flutter/material.dart';
import 'package:learn/Container1.dart';
import 'package:learn/Container2.dart';
import 'package:learn/Screen2.dart';
class HomeSceen2 extends StatefulWidget {
   HomeSceen2({super.key});

  @override
  State<HomeSceen2> createState() => _HomeSceen2State();
}

class _HomeSceen2State extends State<HomeSceen2> {
  double value = 100;
  String selectedGender = "";
  int age = 20;
  int Weight = 70;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Container1(
                text: "Male ",
                icon: Icons.male,
                selectedGender: selectedGender,
                onTap: () {
                  setState(() {
                    selectedGender = "male";
                  });
                },
              ),
              Container1(
                text: "Female  ",
                icon: Icons.female,
                selectedGender: selectedGender,
                onTap: () {
                  setState(() {
                    selectedGender = "female";
                  });
                },
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height ",
                  style: TextStyle(fontSize: 30, color: Colors.grey),
                ),
                Text(
                  "${value.round()} cm",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(height: 20),
                Slider(
                  value: value,
                  max: 200,
                  min: 100,
                  activeColor: Colors.red[700],
                  onChanged: (double x) {
                    value = x;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container2(
                text: "Weight ",
                count: Weight,
                onTap1: () {
                  setState(() {
                    Weight++;
                  });
                },
                onTap2: () {
                  setState(() {
                    Weight--;
                  });
                },
              ),
              Container2(
                text: "Age ",
                count: age,
                onTap1: () {
                  setState(() {
                    age++;
                  });
                },
                onTap2: () {
                  setState(() {
                    age--;
                  });
                },
              ),
            ],
          ),
        ),
        Expanded(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return Screen2(
                        height: value.toInt(),
                        weight: Weight,
                      );
                    }));
                  },
                  child: Container(
                    height: 70,
                    color: Colors.red[800],
                    child: Center(
                      child: Text(
                        "Calculate ",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
