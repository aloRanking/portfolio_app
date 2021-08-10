
import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/homePage.dart';
import 'package:portfolio_app/pages/portfolio.dart';
import 'package:portfolio_app/pages/servicePage.dart';
import 'package:portfolio_app/pages/testimonialPage.dart';


class DesktopViewScreen extends StatefulWidget {
  @override
  _DesktopViewScreenState createState() => _DesktopViewScreenState();
}

class _DesktopViewScreenState extends State<DesktopViewScreen>  {

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Scrollbar(
          child: ListView(
            children: [
             HomePage(),
              ServicesPage(),
              PortfolioPage(),
             TestimonialPage()
            ],
          ),
        ),
      ),
    );
  }

   }




