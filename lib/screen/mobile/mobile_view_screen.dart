import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/constants.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/borderbutton.dart';
import 'package:portfolio_app/widgets/social_buttons.dart';
import 'package:portfolio_app/widgets/subhead.dart';

class MobileViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              buildImage(),
              buildProfile(),
              SizedBox(
                height: 30,
              ),
              buildContactButtons(),
              SocialButtonWidgets(),
              SizedBox(
                height: 10,
              ),
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
                            FontAwesomeIcons.laptop,
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
              SubProfileHeadline(
                headline: 'testimonials',
              ),

              Stack(
                children: [
                  Container(
                    height: 300,
                    width: size.width,
                  ),

                  Positioned(
                    top: 50,
                    left: 40,
                    right: 20,
                    child: Container(
                      width: size.width -60,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2
                        )
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/user_2.png'),
                        )),
                  ),





                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildContactButtons() {
    return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BorderButton(
                    onPressed: () {},
            borderColor: kGreenColor,
            buttonText: 'DOWNLOAD CV',
          ),
                  SizedBox(width: 20,),
                  BorderButton(
                    onPressed: () {},
                    borderColor: Colors.grey,
                    buttonText: 'Contact',
                  ),
                ],
              ),
            );
  }

  Container buildProfile() {
    return Container(
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
            aboutMe,
            style: TextStyle(wordSpacing: 3, height: 1.5),
          )),
        ],
      ),
            );
  }

  Container buildImage() {
    return Container(
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
