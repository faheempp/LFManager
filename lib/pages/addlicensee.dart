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
        title: Text("Add New Licensee",style: TextStyle(color: color2),),
        backgroundColor: color1,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
        //color: color2,
        width: MediaQuery.of(context).size.width*1,
        child: ListView(
          children: [
            Container(
              child: TextFormField(
                controller: licenseeNameController,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Licensee Name",
                ),
              ),
            ),
            Container(
              child: TextFormField(
                controller: shopNameController,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Shop Name",
                ),
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
            Wrap(       //Deposit rent
              direction: Axis.horizontal,
              spacing: MediaQuery.of(context).size.width*.095,
              children: [
                Container(
                  width:MediaQuery.of(context).size.width*.4,
                  child:
                  TextFormField(
                    //controller: purposeTextController,
                    //textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Security Deposit",
                    ),
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width*.4,
                  child:
                  TextFormField(
                    //controller: purposeTextController,
                    //textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Monthly Rent",

                    ),
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width*.4,
                  child:
                  TextFormField(
                    //controller: purposeTextController,
                    //textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Yearly Increment",
                    ),
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width*.4,
                  child:
                  TextFormField(
                    //controller: purposeTextController,
                    //textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: "Collection date",
                    ),
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width*.4,
                  child:
                  TextFormField(
                    //controller: purposeTextController,
                    //textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: "License Expiry",
                    ),
                  ),
                ),
                DropdownButton<String>(
                  hint: Text("Mode of Collection    "),
                  items: <String>['Cash','Bank Transfer'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                )
              ],
            ),
            Text("Mode of collection"),
            Text("Period of collection"),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
              child: ElevatedButton(
                child: Padding(
                    padding: const EdgeInsets.all(.5),
                    child: Text("Add",style: TextStyle(
                      fontSize: 18,
                    ),)
                ),
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    color7,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
