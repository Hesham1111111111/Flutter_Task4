import 'package:flutter/material.dart';
import 'package:learn/BMI/BMI1.dart';
import 'package:learn/Calculate.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

var name = TextEditingController();
bool obscureText = true;
final username = TextEditingController();

List<Widget> Body = [HomeScreen1(username: name.text), Calculate()];

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: Color(0xFF1976D2),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Login ",
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Enter a beautiful world ",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          width: double.infinity,
          height: 600,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 100),
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(),
                    hintText: "Your Email ",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 25),
                TextFormField(
                  obscureText: obscureText,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(),
                    hintText: "Password  ",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password ",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
                SizedBox(height: 70),
                MaterialButton(
                  color: Color(0xFF1976D2),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return HomeScreen1(username: name.text);
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    child: Center(
                      child: Text(
                        "LOGIN ",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        "Don't Have An Account ? ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Register Now ",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
