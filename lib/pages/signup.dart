import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';
import 'package:lfmanager/pages/dashboard.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 70, 0, 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "LF Manager",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Color(0xCE0A0A0A),
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              const Text(
                "Create New Account",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Container(
                //password filed container
                padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                child: TextFormField(
                  //username field
                  controller: nameController,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              Container(
                //password filed container
                padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                child: TextFormField(
                  //username field
                  controller: phoneController,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Phone",
                      labelStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              Container(
                //username filed container
                padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                child: TextFormField(
                  //username field
                  controller: emailController,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              Container(
                //password filed container
                padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                child: TextFormField(
                  //username field
                  controller: passwordController,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              Container(
                //password filed container
                padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                child: TextFormField(
                  //username field
                  controller: passwordController,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              TextButton(//login button
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(20, 8, 20, 8)),
                      elevation: MaterialStateProperty.all(5),
                      backgroundColor: MaterialStateProperty.all(color7),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Dashboard();
                        }));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Row(// signin with google apple
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  InkWell(
                    child:Text("Sign In",style: TextStyle(color: Colors.blue),),
                    onTap: (){
                      Navigator.pop(context);
                      },
                  )

                ],
              ),
            ]),
      ),
    );
  }
}
