import 'package:flutter/material.dart';
import 'package:portfolio_app/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alobently',
      debugShowCheckedModeBanner: false,
      //darkTheme: ,
      theme: ThemeData(


      ),
      home:Scrollbar(
        child: HomeScreen()),
    );
  }
}


