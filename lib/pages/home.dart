import 'package:flutter/material.dart';
import 'package:lfmanager/Utils/theme.dart';

import 'licenseelist.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: color1,
          ),
          backgroundColor: color3,
          title: const Text(
            "Title",
            style: TextStyle(
              fontFamily: "Sacramento",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          centerTitle: true,
          leading: null,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.power_settings_new_rounded))
          ],
        ),
        body: Container(
          color: color1,
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
                            color2,
                            color1,
                            color2,
                          ]),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                        )
                      ]),
                  child: ListTile(
                    title: const Text("Afeef Ali",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        )),
                    subtitle: const Text("Licensor",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
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
                        context, Icons.supervisor_account_rounded, "Licensees"),
                    Stack(
                      alignment: Alignment(1, -1.2),
                      children: [
                        HomepageButton(context,Icons.monetization_on_outlined,"Collect"),
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
                    HomepageButton(context, Icons.list_alt_rounded, "History"),
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
      BuildContext context, IconData buttonIcon, String buttonName) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(.5, 5, .5, 5),
              child: Icon(
                buttonIcon,
                size: 50,
                color: textcolor1,
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LicenseeList();
              }));
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(10),
              backgroundColor: MaterialStateProperty.all<Color>(
                color4,
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
                  fontSize: 16, fontWeight: FontWeight.w500, color: textcolor1),
            ),
          ),
        ],
      ),
    );
  }
}
