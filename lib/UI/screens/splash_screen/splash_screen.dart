import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Container(
         width: double.infinity,
         decoration: BoxDecoration(
           gradient: LinearGradient(colors:
           [Colors.blue, Colors.black26, Colors.amberAccent,],
           begin: Alignment.topRight,
           end: Alignment.bottomLeft
         ),
         ),
         child: Column(
           children: [
             Padding(
               padding: EdgeInsets.only(top: 170, left: 10),
               child: Center(
                 child: Container(
                   height: 350,
                   width: 350,
                   decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage('assets/images/doggo.png'),
                     fit: BoxFit.cover),
                   ),
                   child: RichText(text: TextSpan(
                       text: 'Paw', style: TextStyle(color: Colors.yellow, fontSize: 60),
                       children: <TextSpan>[
                         TextSpan(text: 'mate', style: TextStyle(color: Colors.blue, fontSize: 50),)
                       ]
                   )),
                   alignment: Alignment.bottomCenter,
                 ),
               ),
             ),
           ],
         ),
       )
    );
  }
}
