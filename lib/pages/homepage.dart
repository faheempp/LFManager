import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';

import 'collect.dart';
import 'collectionhistory.dart';
import 'licenseelist.dart';
import 'login.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: color2,
          ),
          backgroundColor: color1,
          title:  Text(
            "Title",
            style: TextStyle(
              fontFamily: "Sacramento",
              color:  color2,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          centerTitle: true,
          leading: null,
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.notifications_active,color: color7,)
            ),

            IconButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context){return Login();}), (route) => false);
                },
                icon: Icon(Icons.power_settings_new_rounded))
          ],
        ),
        body: Container(
          color: color3,
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      //color: Colors.grey[300],
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: <Color>[
                            color7,
                            //color2,
                            color7,
                          ]),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                        )
                      ]),
                  child: ListTile(
                    title:  Text("Afeef Ali",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: color1,
                        )),
                    subtitle: Text("Licensor",
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.w600,
                        )),
                    trailing: CircleAvatar(
                      backgroundColor: color3,
                      radius: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 145,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomepageButton(
                        context, Icons.supervisor_account_rounded, "Licensees",LicenseeList()),
                    Stack(
                      alignment: Alignment(1, -1.2),
                      children: [
                        HomepageButton(context,Icons.monetization_on_outlined,"Collect",Collect()),
                        Container(
                          child:Center(
                            child: Text("99",textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: color1,
                                fontWeight: FontWeight.w700,
                              ),),
                          ),
                          width: 25,
                          height: 25,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                              boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Colors.black,
                              ),]
                          ),
                        ),
                      ],
                    ),
                    HomepageButton(context, Icons.list_alt_rounded, "History",CollectionHistory()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget HomepageButton(
      BuildContext context, IconData buttonIcon, String buttonName,Widget pageName) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(.5, 5, .5, 5),
              child: Icon(
                buttonIcon,
                size: 40,
                color: color1,
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return pageName;
              }));
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(10),
              backgroundColor: MaterialStateProperty.all<Color>(
                color2,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
            ),
          ),
          Padding(                                                  //button name
            padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Text(
              buttonName,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: color1),
            ),
          ),
        ],
      ),
    );
  }
}
