import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/contactPage.dart';
import 'package:portfolio_app/pages/homePage.dart';
import 'package:portfolio_app/pages/portfolio.dart';
import 'package:portfolio_app/pages/servicePage.dart';
import 'package:portfolio_app/pages/topNavbar.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Color(0xFF191D23),
      body: Container(
        child: Scrollbar(
          child: ListView(
            controller: scrollController,
            physics: BouncingScrollPhysics(),
            children: [
              TopNavBar(controller: scrollController),
              HomePage(),
              ServicesPage(),
              PortfolioPage(),
              ContactPage(scrollController: scrollController,)
            ],
          ),
        ),
      ),
    );
  }
}
