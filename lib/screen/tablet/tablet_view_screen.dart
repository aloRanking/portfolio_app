import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/strings.dart';

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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImage(),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      buildProfile(),
                      SizedBox(
                        height: 20,
                      ),
                      buildContactButtons(),
                    ],
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
                child: Table(columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(4),
                }, children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.pen,
                        color: Colors.green,
                        size: 50,
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
                            Text(whatIDo),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.laptop,
                        color: Colors.green,
                        size: 50,
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
                            Text(whatIDo),
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
                        size: 50,
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
                            Text(whatIDo),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
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
                            Text(whatIDo),
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

  Container buildContactButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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

  Container buildProfile() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text('Mobile App Developer', style: TextStyle(fontSize: 16)),
          SizedBox(
            height: 15,
          ),
          Text('ADIGUN ALO',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 310,
              child: Text(
                aboutMe,
                textAlign: TextAlign.center,
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
          height: 250,
          width: 250,
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

class SubProfileHeadline extends StatelessWidget {
  const SubProfileHeadline({
    Key key,
    this.headline,
  }) : super(key: key);

  final String headline;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline.toUpperCase(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Stack(
                children: [
                  Container(
                    height: 5,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white60),
                  ),
                  Container(
                    height: 5,
                    width: 40,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ],
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
