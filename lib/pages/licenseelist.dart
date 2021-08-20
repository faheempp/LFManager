import 'package:flutter/material.dart';
import 'package:lfmanager/widgets/navbar.dart';
class LicenseeList extends StatelessWidget {
  const LicenseeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      appBar: AppBar(
        elevation: 5,
        title: Text("Licensees",style: TextStyle(
          color: Colors.black,
        ),),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children:  [
            const SizedBox(height: 8),
            const SizedBox(height: 8),
            primaryDetails("Faheem", "Shop A",20000),
            primaryDetails("Fasna", "Shop AB",20000),
            primaryDetails("Saja", "Shop c",20000),
            primaryDetails("Abdul Haque", "Shop B",20000),
            primaryDetails("Amlas", "Shop Abc",20000),
            primaryDetails("Abdul Kareem", "Shop K",20000),
            primaryDetails("Afeef Ali", "Shop g2",20000),
          ],
        ),
      ),
    );
  }

  Widget primaryDetails(String name, String shopname, double amount){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: <Color>[
              Colors.grey[500]!,
              Colors.grey[300]!,
            ]
        ),
      ),
      child: ListTile(
          title: Text(name),
          subtitle: Text(shopname),
          trailing: Text(amount.toString()),
        ),
    );
  }
}


