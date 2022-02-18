import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';

class LicenseeDetails extends StatefulWidget {
  const LicenseeDetails({Key? key}) : super(key: key);

  @override
  _LicenseeDetailsState createState() => _LicenseeDetailsState();
}

class _LicenseeDetailsState extends State<LicenseeDetails> {
  String name = "Afeef Ali";
  String shopname = "Ali Auto Care";
  String phone = "9526986898";
  String aadhar = "008912348787";
  String address = "Pottammal H, Pulikkal PO Malappuram";
  String purpose = "Automobile Workshop";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: Text("Licensee Details"),
        iconTheme: IconThemeData(
          color: color2,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            tooltip: "Edit",
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.delete),
            tooltip: "Edit",
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
          //padding: EdgeInsets.fromLTRB(16,5,16,5),
          children: [
            Container(//name and shopname column and pic
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
              width: MediaQuery.of(context).size.width * 1,
              height: 90,
              color: color2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        shopname,
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Icon(Icons.person,size: 55,),
                    backgroundColor: color4,
                    radius: MediaQuery.of(context).size.width * .1,
                  ),
                ],
              ),
            ), //name and shopname ends
            detail("Purpose", purpose),
            detail("Phone", phone),
            detail("Adhaar No", aadhar),
            detail("Address", address),
          ]),
    );
  }

  detail(String label, String info) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
      padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
      //width: MediaQuery.of(context).size.width * 1,
      //min-height: 40,
      color: color3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label + " : ",
            style: TextStyle(
              fontSize: 14,
              color: color1
            ),
          ),
          Text(
            info,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
