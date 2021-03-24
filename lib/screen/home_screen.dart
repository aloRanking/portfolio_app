import 'package:flutter/material.dart';
import 'package:portfolio_app/screen/mobile/mobile_view_screen.dart';
import 'package:portfolio_app/screen/tablet/tablet_view_screen.dart';
import 'package:portfolio_app/utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        leading: Icon(Icons.person, color: Colors.black),
        title: Text('ADIGUN ALO',style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.list,color: Colors.black,)
        ],
        elevation: 5.0,
      ),

      body:Responsive(
        mobile: MobileViewScreen(),
          tablet: TabletViewScreen(),
          desktop: TabletViewScreen(),
        )

    );
  }
}
