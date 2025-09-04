import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 40,),
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

              children: [
                SizedBox(height: 100,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Your Email ",
                      prefixIcon: Icon(Icons.email)
                  ),

                ),
                SizedBox(height:25 ,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password  ",
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260),
                  child: Text("Forget Password " , style: TextStyle(color: Colors.blue, fontSize: 15),),
                ),

                SizedBox(height:70 ,),
                MaterialButton( color:Color(0xFF1976D2), onPressed: (){},child:Container(
                  width: 300,
                  height: 45,
                  child: Center(child: Text("LOGIN ",style: TextStyle(fontSize: 25, color: Colors.white),)),
                )
                ),
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text("Don't Have An Account ? ",style: TextStyle(fontSize: 20),),
                      Text("Register Now ", style:TextStyle(color: Colors.blue, fontSize: 18),)


                    ],
                  ),
                )
              ],

            ),
          ),
        ),

      ],
    )

    ;
  }
}


