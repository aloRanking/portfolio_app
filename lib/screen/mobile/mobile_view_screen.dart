import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/pages/homePage.dart';
import 'package:portfolio_app/pages/portfolio.dart';
import 'package:portfolio_app/pages/servicePage.dart';
import 'package:portfolio_app/pages/testimonialPage.dart';
import 'package:portfolio_app/widgets/testimonial_item.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/constants.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/screen/mobile/borderbutton.dart';
import 'package:portfolio_app/widgets/contact_buttons.dart';
import 'package:portfolio_app/widgets/social_button.dart';
import 'package:portfolio_app/widgets/subhead.dart';

import 'button_social.dart';

class MobileViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    
    
    return Scaffold(
     /*  appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        leading: Icon(Icons.person, color: Colors.black),
        title: Text('ADIGUN ALO',style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.list,color: Colors.black,)
        ],
        elevation: 5.0,
      ), */
      backgroundColor: Colors.grey[100],
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
             HomePage()            ,
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

class SocialButtonWidgets extends StatelessWidget {
  const SocialButtonWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialButton(
            url: linkedIn,
            color: Colors.blue[700],
            icon: FontAwesomeIcons.linkedin,
          ),
          SizedBox(
            width: 20,
          ),
          SocialButton(
            url: twitter,
            color: Colors.blue,
            icon: FontAwesomeIcons.twitter,
          ),
          SizedBox(
            width: 20,
          ),
          SocialButton(
            url: github,
            color: Colors.black,
            icon: FontAwesomeIcons.github,
          ),
        ],
      ),
    );
  }
}
