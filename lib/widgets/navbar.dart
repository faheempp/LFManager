import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey,
          )
        ]),
        child: GNav(
            tabBorderRadius: 5,
            // tabBackgroundGradient: LinearGradient(
            //     begin: Alignment.centerLeft,
            //     end: Alignment.centerRight,
            //     colors: <Color>[
            //       Colors.orange[400]!,
            //       Colors.orange[300]!,
            //       Colors.orange[400]!,
            //     ]),
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 5,
            activeColor: Colors.red,
            iconSize: 28,
            duration: Duration(milliseconds: 200),
            // tabBackgroundColor: Colors.cyan[800]!,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                iconSize: 35,
                text: 'Home',

              ),
              GButton(
                icon: Icons.person,
                text: 'Acoount',
              ),
              GButton(
                icon: Icons.person_add,
                text: 'Add',
              ),
              GButton(
                icon: Icons.more_horiz,
                text: 'More',

              )
            ]));
  }
}
