import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/homePage.dart';
import 'package:portfolio_app/pages/portfolio.dart';
import 'package:portfolio_app/pages/servicePage.dart';
import 'package:portfolio_app/pages/testimonialPage.dart';
import 'package:portfolio_app/pages/topNavbar.dart';
import 'package:portfolio_app/screen/desktop/desktop_screen.dart';
import 'package:portfolio_app/screen/mobile/mobile_view_screen.dart';
import 'package:portfolio_app/screen/tablet/tablet_view_screen.dart';
import 'package:portfolio_app/utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Scrollbar(
          child: ListView(
            controller: scrollController,
            physics: BouncingScrollPhysics(),
            children: [
              TopNavBar(controller:scrollController),
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
