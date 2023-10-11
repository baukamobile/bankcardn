import 'package:bankcard/main.dart';
import 'package:flutter/material.dart';
import 'package:bankcard/secondpage/settings.dart';
class nextpage extends StatefulWidget {
  const nextpage({super.key});

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar for menu and notifications
        actions: [
          Icon(Icons.notification_important)
        ],
        backgroundColor: Colors.blueAccent[100],
      ),
      drawer: Drawer(

        child: Container(
          color: Colors.greenAccent[100],
          child: ListView(
            children: [
              DrawerHeader(child: Center(
                child: Container(
                  child: Text(
                    "Bank Account",style: TextStyle(
                      fontSize: 35, color: Colors.blueAccent
                  ),
                  ),
                ),
              )),
              ListTile(
                leading: Icon(Icons.account_balance, color: Colors.black,),
                title: Text("Main Page"),
                onTap: (){
                  Navigator.of (context) .push (MaterialPageRoute(builder: (context)=> Home()));
                },
              ),
              ListTile(
                leading: Icon(Icons.calculate, color: Colors.black,),
                title: Text("Calculate"),
                onTap: (){
                  Navigator.of (context) .push (MaterialPageRoute(builder: (context)=> nextpage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.black,),
                title: Text("Settings"),
                onTap: (){
                  Navigator.of (context) .push (MaterialPageRoute(builder: (context)=> settings()));
                },
              ),
            ],
          ),
        ),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 160),
            child: Text("Send", style: TextStyle(
              fontSize: 25, color: Colors.black
            ),),
          ),
          SizedBox(height: 40,),

          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("img/a1.png", height: 60,width: 60,),
                ),


              ],
            ),
          ),
          


        ],
      ),
    );
  }
}
