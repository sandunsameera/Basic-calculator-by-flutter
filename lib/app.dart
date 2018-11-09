import 'package:flutter/material.dart';
import 'package:flutter_new/screens/home_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "calculator",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor:Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}