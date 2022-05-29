import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';

import 'addlicensee.dart';
import 'licenseedetails.dart';

class Collect extends StatefulWidget {
  @override
  _CollectState createState() => _CollectState();
}

class _CollectState extends State<Collect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: color1,
        title: Text(
          "Collect",
          style: TextStyle(
            color: color2,
          ),
        ),
        iconTheme: IconThemeData(color: color3),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 8),
            primaryDetails(context, "Faheem", "Shop A", 20000),
            primaryDetails(context, "Fasna", "Shop AB", 20000),
            primaryDetails(context, "Saja", "Shop c", 20000),
            primaryDetails(context, "Abdul Haque", "Shop B", 20000),
            primaryDetails(context, "Amlas", "Shop Abc", 20000),
            primaryDetails(context, "Abdul Kareem", "Shop K", 20000),
            primaryDetails(context, "Afeef Ali", "Shop g2", 20000),
            primaryDetails(context, "Abdul Kareem", "Shop K", 20000),
            primaryDetails(context, "Afeef Ali", "Shop g2", 20000),
            primaryDetails(context, "Abdul Kareem", "Shop K", 20000),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget primaryDetails(
      BuildContext context, String name, String shopname, double amount) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: <Color>[
              Colors.grey[300]!,
              Colors.grey[300]!,
            ]),
      ),
      child: Row(
        children: [
          Container(
            color: color3,
            width: MediaQuery.of(context).size.width * .5,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  shopname,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: color7,
            width: MediaQuery.of(context).size.width * .5,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "20000",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Collect",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
