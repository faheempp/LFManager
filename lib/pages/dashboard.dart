import 'package:flutter/material.dart';
import 'package:lfmanager/pages/licenseelist.dart';
import 'package:lfmanager/pages/login.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lfmanager/widgets/navbar.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
          backgroundColor: Colors.white,
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
        body: home(context),
        bottomNavigationBar: NavBar(),
      ),
    );
  }

  Widget home(BuildContext context) {
    return Container(
        color: Colors.white,
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
                          Colors.grey[400]!,
                          Colors.grey[300]!,
                          Colors.grey[400]!,
                        ]),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                      )
                    ]
                ),
                child: const ListTile(
                  title: Text("Afeef Ali",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      )),
                  subtitle: Text("Licensor",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      )),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.orange,
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
                  ElevatedButton(
                    child: Icon(Icons.supervisor_account_rounded,
                      size: 53,
                      color: Colors.blueGrey[800]!,),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        return const LicenseeList();
                      }));
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue[100]!,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                  ElevatedButton(
                    child: Icon(Icons.notifications_active_rounded,
                      size: 53,
                      color: Colors.blueGrey[800]!,
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange[100]!,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                  ElevatedButton(
                    child: Icon(
                      Icons.list_alt_rounded,
                      size: 53,
                      color: Colors.blueGrey[800]!,
                    ),
                    onPressed: () {},

                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green[100]!,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

}