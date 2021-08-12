import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/contactPage.dart';
import 'package:portfolio_app/pages/homePage.dart';
import 'package:portfolio_app/pages/portfolio.dart';
import 'package:portfolio_app/pages/servicePage.dart';
import 'package:portfolio_app/pages/testimonialPage.dart';
import 'package:portfolio_app/pages/topNavbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              child: ListView(
                controller: scrollController,
                physics: BouncingScrollPhysics(),
                children: [
                  TopNavBar(controller: scrollController),
                  HomePage(),
                  ServicesPage(),
                  PortfolioPage(),
                  TestimonialPage(),
                  ContactPage(
                    scrollController: scrollController,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
