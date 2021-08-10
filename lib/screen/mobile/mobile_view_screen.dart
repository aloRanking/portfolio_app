import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    var size = MediaQuery.of(context).size;
    final PageController controller = PageController(initialPage: 0);
    final PageController controller1 = PageController(initialPage: 0);
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
      backgroundColor: Colors.grey[100],
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              buildImage(),
              buildProfile(),
              
              SubProfileHeadline(
                headline: 'What i do',
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 20),
                child: Table(columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(4),
                }, children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mobile,
                        color: Colors.green,
                        size: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mobile App development',
                                style: kTableRowTitleStyle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(app_dev, style: kTableRowTextStyle),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.laptop,
                        color: kGreenColor,
                        size: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Web development', style: kTableRowTitleStyle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(web_dev, style: kTableRowTextStyle),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.desktop,
                        color: kGreenColor,
                        size: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('App development', style: kTableRowTitleStyle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(whatIDo, style: kTableRowTextStyle),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.shoppingBag,
                        color: kGreenColor,
                        size: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('App development', style: kTableRowTitleStyle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(whatIDo, style: kTableRowTextStyle),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              SubProfileHeadline(
                headline: 'My Selected Work',
              ),
              Container(
                height: 300,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller1,
                  children: [
                    Image.asset('images/pjctsnap.jpg'),
                    Image.asset('images/hagglexsnap.jpg'),
                    Image.asset('images/lfdssnap.jpg'),
                    Image.asset('images/foodsnap.jpg'),
                    Image.asset('images/moviesnap.jpg'),
                  ],
                ),
              ),
              SubProfileHeadline(
                headline: 'testimonials',
              ),
              Container(
                height: 300,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children: [
                    TestimonialItem(size: size,
                    divideSize: 1,
                    image: 'assets/images/user_2.png'),
                     TestimonialItem(size: size,
                    divideSize: 1,
                    image: 'assets/images/user_3.png'),
                     TestimonialItem(size: size,
                    divideSize: 1,
                    image: 'assets/images/user_2.png')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

 buildProfile() {
    return FadeIn(
      delay: Duration(milliseconds: 100),
      duration: Duration(milliseconds: 1000),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text('Flutter Developer',
                style: TextStyle(
                    letterSpacing: 2, fontSize: 16, color: Color(0xFFCACACA))),
            SizedBox(
              height: 15,
            ),
            Text('ADIGUN ALO',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              aboutMe_txt,
              textAlign: TextAlign.justify,
              style: TextStyle(wordSpacing: 3, height: 1.5),
            )),
            SizedBox(
                  height: 10,
                ),
                //buildContactButtons(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContactButtons(),
                  ],
                ),
                SocialButtonWidgets(),
               
                SizedBox(
                  height: 10,
                ),
          ],
        ),
      ),
    );
  }

  buildImage() {
    return ZoomIn(
      duration: Duration(milliseconds: 1190),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white54),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/aloranking.jpeg'),
                )),
          ),
        ),
      ),
    );
  }
}

class SocialButtonWidgets extends StatelessWidget {
  const SocialButtonWidgets({
    Key key,
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
