import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  int res = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF2E7D32),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: num1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hint: Text(
                        "Num 1",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: num2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hint: Text(
                        "Num 2",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(color: Color(0xFF2E7D32), width: 50, height: 20),
              Text("Result  = ${res} ", style: TextStyle(fontSize: 20)),
              Container(color: Color(0xFF2E7D32), width: 50, height: 20),
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF2E7D32),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      res = int.parse(num1.text) + int.parse(num2.text);
                    });
                  },
                  color: Colors.grey,
                  child: Text(" + ", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 20),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      res = int.parse(num1.text) - int.parse(num2.text);
                    });
                  },
                  color: Colors.grey,
                  child: Text(" - ", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 20),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      res = int.parse(num1.text) * int.parse(num2.text);
                    });
                  },
                  color: Colors.grey,
                  child: Text(" * ", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 20),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      double res = int.parse(num1.text) / int.parse(num2.text);
                    });
                  },
                  color: Colors.grey,
                  child: Text(" / ", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
