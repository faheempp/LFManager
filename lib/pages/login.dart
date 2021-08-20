import 'package:flutter/material.dart';
import 'package:lfmanager/pages/dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          const Text(
            "LF Manager",
            style: TextStyle(
              fontFamily: "Sacramento",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          TextField(
            
           keyboardType: TextInputType.text,
           decoration: InputDecoration(
             disabledBorder: OutlineInputBorder(
               borderSide: BorderSide(
                 color: Colors.black,
               )
             ),
           ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Dashboard();
                }));
              },
              child: const Text("Login")
          ),

        ]),
      ),
    );
  }
}
