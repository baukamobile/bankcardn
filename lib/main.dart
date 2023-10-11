import 'package:flutter/material.dart';
import 'pages/elements.dart';
import 'pages/listviewelements.dart';
import 'secondpage/nextpage.dart';
import 'secondpage/settings.dart';
// import 'pages/drawer.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

      //спрева надо создать column
      /*
      потом текст
      потом по очередности создадим контейнер
      обьезятельно анутри посленегого контейнера создадим
      listview horizntal scrolling

       */

      body:



      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:[ Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 30, 160, 0),
                child: Text("Welcome Friend", style: TextStyle(
                  color: Colors.black, fontSize: 25,
                ),),
              ),
              SizedBox(height: 25,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(175, 198, 236, 100),
                ),
                // color: Color.fromRGBO(175, 198, 236, 100),
                child: Column(
                  children: [
                    Row(

                      children: [


                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 8, 200, 8),
                              child: Text("My balance"),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                              child: Icon(Icons.add),
                            )
    ]

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 8, 190, 9),
                      child: Text("\$520,334", style: TextStyle(
                        color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold
                      ),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 8, 170, 8),
                          child: Text("Exp 09/24"),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                          child: Text("VISA", style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25
                          ),),
                        )
                      ],
                    ),


                  ],
                ),

              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(170, 241, 206, 100)
                ),
                // color: Color.fromRGBO(175, 198, 236, 100),
                child: Padding(

                  padding: const EdgeInsets.fromLTRB(88, 50, 40, 60),
                  child: Container(
                    child: Text(
                      "+ Add New Card", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30,
                    ),
                    ),
                  ),
                ),

              ),
              listelements(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 90),
                      child: Text("Quick Transaction", style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20
                      ),),
                    ),
Padding(
  padding: const EdgeInsets.fromLTRB(8, 8, 15, 8),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
          Text("Recent Activity",style: TextStyle(
            fontSize: 19
          ),),
          Text("3 Days", style: TextStyle(fontSize: 14),)
    ],
  ),
),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 8, 10, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: ListTile(
                              leading: Image.asset("img/a2.jpg", height: 60, width: 60,),
                              title: Text(
                                  "James Alive"),
                              subtitle: Text("Feb 28, 2023"),
                            ),
                          ),
                          Text("+\$25,00", style: TextStyle(
                            color: Colors.green
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 8, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: ListTile(
                              leading: Image.asset("img/a4.jpg", height: 60, width: 60,),
                              title: Text(
                                  "James Alive"),
                              subtitle: Text("Feb 28, 2023"),
                            ),
                          ),
                          Text("-\$25,00", style: TextStyle(
                            color: Colors.red
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: ListTile(
                              leading: Image.asset("img/a1.png", height: 60, width: 60,),
                              title: Text(
                                  "James Alive"),
                              subtitle: Text("Feb 28, 2023"),
                            ),
                          ),
                          Text("-\$25,00", style: TextStyle(
                              color: Colors.green
                          ),),
                        ],
                      ),
                    ),
                  ],

                ),

              ),
            ],
          ),
    ],
        ),
      ),



    );
  }
}