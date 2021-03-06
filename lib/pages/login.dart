import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';
import 'package:lfmanager/pages/dashboard.dart';
import 'package:lfmanager/pages/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
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
                "Sign In",
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
                //username filed container
                padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                child: TextFormField(
                  //username field
                  controller: usernameController,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
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
                    "Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              const Text(
                "Or continue with",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Row(// signin with google apple
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.circle),
                      label: Text("Google"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey)
                      ),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.circle),
                    label: Text("Apple"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)
                  ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .09,
              ),
              Row(// signin with google apple
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text("Doesn't have an account? "),
                  InkWell(
                    child:Text("Sign up",style: TextStyle(color: Colors.blue),),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                  )

                ],
              ),
            ]),
      ),
    );
  }
}
