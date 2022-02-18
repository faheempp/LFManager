import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';
import 'package:lfmanager/pages/addlicensee.dart';
import 'package:lfmanager/pages/licenseelist.dart';
import 'package:lfmanager/pages/login.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lfmanager/pages/homepage.dart';
import 'package:lfmanager/pages/myprofile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lfmanager/widgets/navbar.dart';


class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex=0;
  List <Widget> screens=[
    Home(),
    AddLicensee(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index)=> setState(()=> currentIndex= index),
        selectedItemColor: color1,
        unselectedItemColor: color4,
        backgroundColor: color2,
        showUnselectedLabels: true,//false,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,size: 30,),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled,size: 30),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined,size: 30),
            label: 'Add Licensee',
            activeIcon: Icon(Icons.add_circle_outlined,size: 30),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined,size: 30),
            label: 'Profile',
            activeIcon: Icon(Icons.person,size: 30),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.more_horiz),
          //   label: 'More',
          // )
        ],
      ),

    );
  }
  void jumptoaddnew(){
    setState(()=>currentIndex=1);
  }
}