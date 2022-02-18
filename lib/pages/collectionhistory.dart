import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';

import 'licenseedetails.dart';

class CollectionHistory extends StatefulWidget {
  @override
  _CollectionHistoryState createState() => _CollectionHistoryState();
}

class _CollectionHistoryState extends State<CollectionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: color1,
        title: Text("Collection History" ,style: TextStyle(
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
            collectionDetails(context,"Faheem", "Shop A",20000),
            collectionDetails(context,"Fasna", "Shop AB",20000),
            collectionDetails(context,"Saja", "Shop c",20000),
            collectionDetails(context,"Abdul Haque", "Shop B",20000),
            collectionDetails(context,"Amlas", "Shop Abc",20000),
            collectionDetails(context,"Abdul Kareem", "Shop K",20000),
            collectionDetails(context,"Afeef Ali", "Shop g2",20000),
          ],
        ),
      ),
    );
  }

  Widget collectionDetails(BuildContext context,String name, String shopname, double amount){
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
        leading: Text("12/12/12"),
        title: Text(name),
        subtitle: Text(shopname),
        trailing: Text("20000",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return LicenseeDetails();
          }));
        },
      ),
    );
  }
}