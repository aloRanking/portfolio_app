import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/model/selected_work.dart';
import 'package:portfolio_app/pages/homePage.dart';
import 'package:portfolio_app/pages/portfolio.dart';
import 'package:portfolio_app/pages/servicePage.dart';
import 'package:portfolio_app/pages/testimonialPage.dart';
import 'package:portfolio_app/widgets/testimonial_item.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/contact_buttons.dart';
import 'package:portfolio_app/widgets/projectItem.dart';
import 'package:portfolio_app/widgets/social_button.dart';
import 'package:portfolio_app/widgets/subhead.dart';
import 'package:animate_do/animate_do.dart';

class TabletViewScreen extends StatefulWidget {
  @override
  _TabletViewScreenState createState() => _TabletViewScreenState();
}

class _TabletViewScreenState extends State<TabletViewScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 8000), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Scrollbar(
          child: ListView(
            children: [
              HomePage(),
              ServicesPage(),
              PortfolioPage(),
              TestimonialPage()],
          ),
        ),
      ),
    );
  }

  buildProfile() {
    return FadeIn(
      delay: Duration(milliseconds: 1200),
      duration: Duration(milliseconds: 1000),
      child: Container(
        width: 400,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text('Flutter Developer',
                style: TextStyle(
                    fontSize: 16, letterSpacing: 3, color: Color(0xFFCACACA))),
            SizedBox(
              height: 15,
            ),
            Text('ADIGUN ALO',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              aboutMe_txt,
              textAlign: TextAlign.justify,
              style: TextStyle(
                wordSpacing: 3,
                height: 1.5,
              ),
            )),
            SizedBox(
              height: 20,
            ),
            ContactButtons(),
            SizedBox(
              height: 20,
            ),
            SocialButtons(),
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Flexible(
      child: ZoomIn(
        duration: Duration(milliseconds: 1190),
        child: Container(
          height: 350,
          width: 350,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white54),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/aloranking.jpeg'),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
