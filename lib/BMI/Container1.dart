import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  final String text;
  final IconData icon;
  final String selectedGender;
  final VoidCallback onTap;

  Container1({
    required this.text,
    required this.icon,
    required this.selectedGender,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: selectedGender == text.trim().toLowerCase()
                ? (text.trim().toLowerCase() == "male"
                ? Colors.pink
                : Colors.pink)
                : Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 120,
                color: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}