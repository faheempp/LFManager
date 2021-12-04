import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';
class AddLicensee extends StatelessWidget {
   AddLicensee({Key? key}) : super(key: key);
   TextEditingController licenseeNameController=TextEditingController();
   TextEditingController shopNameController=TextEditingController();
   TextEditingController purposeTextController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add New Licensee"),
        backgroundColor: color3,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        //color: color2,
        width: MediaQuery.of(context).size.width*.9,
        child: Column(
          children: [
            TextFormField(
              controller: licenseeNameController,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Licensee Name",
              ),
            ),
            TextFormField(
              controller: shopNameController,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Shop Name",
              ),
            ),
            TextFormField(
              controller: purposeTextController,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Purpose",
              ),
            ),
            TextFormField(
              //controller: purposeTextController,
              //textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Mobile",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
