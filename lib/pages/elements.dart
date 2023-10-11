import 'package:flutter/material.dart';
class elements extends StatelessWidget {
  const elements({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
           child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset("img/a1.png", ),
                  // Icon(Icons.add, color: Colors.black,),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purple
                  ),
                ),
                Padding(padding: EdgeInsets.all(8),
                    child: Text("ADD", style: TextStyle(
                      color: Colors.black
                    ),)
                ),
              ],
            )
        //   ],
        // ),
      );
  }
}
