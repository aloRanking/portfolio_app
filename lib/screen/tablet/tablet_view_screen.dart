import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/subhead.dart';
import 'package:universal_html/js.dart' as js;

class TabletViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImage(),
                  SizedBox(
                    width: 50,
                  ),
                  Flexible(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildProfile(),
                          SizedBox(
                            height: 20,
                          ),
                          buildContactButtons(),
                          SizedBox(
                            height: 20,
                          ),
                          buildSocialButtons()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(4),
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
                            Text('App development',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              whatIDo,
                              style: TextStyle(wordSpacing: 3, height: 1.5),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.laptop,
                        color: Colors.green,
                        size: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('App development',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              whatIDo,
                              style: TextStyle(wordSpacing: 3, height: 1.5),
                            ),
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
                            Text('App development',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              whatIDo,
                              style: TextStyle(wordSpacing: 3, height: 1.5),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.shoppingBag,
                        color: kGreenColor,
                        size: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('App development',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              whatIDo,
                              style: TextStyle(wordSpacing: 3, height: 1.5),
                            ),
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
                      width: size.width - 60,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey, width: 2)),
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

  buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              size: 30,
              color: Colors.blue[700],
            ),
            onPressed: () {
              js.context.callMethod('open', [linkedIn]);
            }),
        SizedBox(
          width: 15,
        ),
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.twitter,
              size: 30,
              color: Colors.blue,
            ),
            onPressed: () {
              js.context.callMethod('open', [twitter]);
            }),
        SizedBox(
          width: 15,
        ),
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.github,
              size: 30,
            ),
            onPressed: () {
              js.context.callMethod('open', [github]);
            })
      ],
    );
  }

  Container buildContactButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BorderButton(
            onPressed: () {},
            borderColor: kGreenColor,
            buttonText: 'DOWNLOAD CV',
            hoverColor: kGreenColor,
            hoverTextColor: kWhiteColor,
          ),
          SizedBox(
            width: 13,
          ),
          BorderButton(
              onPressed: () {},
              hoverColor: kGreenColor,
              borderColor: Colors.grey,
              buttonText: 'Contact',
              hoverTextColor: kWhiteColor),
        ],
      ),
    );
  }

  buildProfile() {
    return Container(
      width: 400,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text('Flutter Developer',
              style: TextStyle(fontSize: 16, color: Color(0xFFCACACA))),
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
            aboutMe,
            style: TextStyle(wordSpacing: 3, height: 1.5),
          )),
        ],
      ),
    );
  }

  buildImage() {
    return Flexible(
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
    );
  }
}

class BorderButton extends StatelessWidget {
  const BorderButton({
    Key key,
    this.hoverColor,
    this.buttonText,
    this.onPressed,
    this.borderColor,
    this.hoverTextColor,
  }) : super(key: key);
  final Color hoverColor;
  final Color borderColor;
  final Color hoverTextColor;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      onpressed: onPressed,
      hoverColor: hoverColor,
      hoverTextColor: hoverTextColor,
      height: 50,
      hoverPadding: EdgeInsets.only(left: 15, right: 15),
      minWidth: 100,
      elevation: 2,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Container(
          //width: 100,
          // height: 30,
          child: Center(child: Text(buttonText))),
    );
  }
}
