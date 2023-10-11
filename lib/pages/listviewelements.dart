import 'package:flutter/material.dart';
import 'package:bankcard/pages/elements.dart';
class listelements extends StatefulWidget {
  const listelements({super.key});

  @override
  State<listelements> createState() => _listelementsState();
}

class _listelementsState extends State<listelements> {
  @override
  Widget build(BuildContext context) {
    return
             Container(
               child: Row(
                // scrollDirection: Axis.horizontal,

                children:[
                // Lisyi(
                // children: [
                  elements(),
                  elements(),
                  elements(),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset("img/a2.jpg"),
                              // Icon(Icons.add, color: Colors.black,),

                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(8),
                                child: Text("ADD")
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset("img/a3.jpg"),
                              // Icon(Icons.add, color: Colors.black,),

                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(8),
                                child: Text("ADD")
                            ),
                          ],
                        )
                      ],
                    ),
                  ),





        ],
      ),



             );
  }
}
