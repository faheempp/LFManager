import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Your Profile"),
          backgroundColor: color1,
          centerTitle: true,
        ),
        body: Container(
         // color: Colors.,
          child: Column(
            children: [
              Container(
                //color: color4,
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .23,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person,size: 55,),
                      backgroundColor: color4,
                      radius: MediaQuery.of(context).size.width * .1,
                    ),
                    Text(
                      "Afeef Ali",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: color1,
                      ),
                    ),
                  ],
                ),
              ), //usernamephoto
              SizedBox(
                height: 5,
              ),
              ProfileOption(context, Icons.update, "Update Room Details"),
              ProfileOption(context, Icons.settings, "Profile Settings"),
              ProfileOption(context, Icons.vpn_key, "Security"),
              ProfileOption(context, Icons.logout, "Log out"),
            ],
          ),
        ),
      ),
    );
  }

  Widget ProfileOption(BuildContext context, IconData icon, String optionName) {
    return InkWell(
      onTap:(){print(optionName);},
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
        margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: optionName=="Log out" ? color7 : color1 ,
            ),
            SizedBox(width: 20),
            Text(
              optionName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: optionName=="Log out" ? color7 : color1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
