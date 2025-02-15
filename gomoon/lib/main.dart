import 'package:flutter/material.dart';
import 'package:gomoon/pages/home.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget{
 const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoMoon',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(50, 26, 26, 29)
      ),
      home: Homepage(),
    );
  }
}