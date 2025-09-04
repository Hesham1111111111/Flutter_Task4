import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  Container2({super.key, required this.count, required this.text, this.onTap1, this.onTap2});
  final int count ;
  final  String text ;
  final void Function()? onTap1;
  final void Function()? onTap2;

  Color? color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color??Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Text(text, style: TextStyle(fontSize: 30, color: Colors.grey)),
            Text("${count.toInt()}",style: TextStyle(fontSize: 60, color: Colors.white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onTap1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4C4F5E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(Icons.add, size: 55, color: Colors.grey),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: onTap2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4C4F5E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Icon(Icons.remove, size:55 , color: Colors.grey)),
                  ),
                ),
              ],
            )
          ],

        ),
      ),
    );
  }
}