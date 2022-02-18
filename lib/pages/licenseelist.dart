import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';
import 'package:lfmanager/pages/addlicensee.dart';
import 'package:lfmanager/pages/licenseedetails.dart';
import 'package:lfmanager/widgets/navbar.dart';
class LicenseeList extends StatelessWidget {
  const LicenseeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddLicensee();
          }));
        },
      ),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: color1,
        title: Text("Licensees",style: TextStyle(
          color: color2,
        ),),
        iconTheme: IconThemeData(
          color: color3
        ),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children:  [
            const SizedBox(height: 8),
            const SizedBox(height: 8),
            primaryDetails(context,"Faheem", "Shop A",20000),
            primaryDetails(context,"Fasna", "Shop AB",20000),
            primaryDetails(context,"Saja", "Shop c",20000),
            primaryDetails(context,"Abdul Haque", "Shop B",20000),
            primaryDetails(context,"Amlas", "Shop Abc",20000),
            primaryDetails(context,"Abdul Kareem", "Shop K",20000),
            primaryDetails(context,"Afeef Ali", "Shop g2",20000),
          ],
        ),
      ),
    );
  }

  Widget primaryDetails(BuildContext context,String name, String shopname, double amount){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 2.5,0,2.5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: <Color>[
              Colors.grey[300]!,
              Colors.grey[300]!,
            ]
        ),
      ),
      child: ListTile(
          title: Text(name),
          subtitle: Text(shopname),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LicenseeDetails();
            }));
          },
        ),
    );
  }
}


