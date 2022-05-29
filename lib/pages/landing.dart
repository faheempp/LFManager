import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color7,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "LF Manager.",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
