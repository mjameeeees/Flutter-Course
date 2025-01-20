import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

 const Homepage({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return Scaffold(body: pageTitle(),);
 }
}

Widget pageTitle(){
    return Text("#GoMoon", style: TextStyle(color: const Color.fromARGB(255, 171, 162, 162) , fontSize: 70, fontWeight: FontWeight.w700),);
}

Widget moonImage(){
   return Scaffold(body: Container(
    decoration: const BoxDecoration(
      color: Color.fromARGB(97, 255, 0, 0),
      image: DecorationImage(
        fit: BoxFit.contain,
        image: AssetImage("assets/images/moon.png"), )
    ),
   ),);
 }
