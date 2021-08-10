import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/model/selected_work.dart';
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
                            Text('Mobile App development',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              app_dev,
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
                            Text('Web development',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              web_dev,
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
              Container(
                  padding: EdgeInsets.all(8),
                  height: 360,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedProjects.length,
                      itemBuilder: (context, index) {
                        final int count = selectedProjects.length > 10
                            ? 10
                            : selectedProjects.length;
                        final Animation<double> animation =
                            Tween<double>(begin: 0.0, end: 1.0).animate(
                                CurvedAnimation(
                                    parent: animationController,
                                    curve: Interval((1 / count) * index, 1.0,
                                        curve: Curves.fastOutSlowIn)));
                        animationController.forward();
                        return WorkItem(
                          project: selectedProjects[index],
                          animation: animation,
                          animationController: animationController,
                        );
                      })),
              SubProfileHeadline(
                headline: 'testimonials',
              ),
              Container(
                height: 300,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  TestimonialItem(
                    size: size,
                    divideSize: 2,
                    image: 'assets/images/user_2.png',
                  ),
                  TestimonialItem(
                    size: size,
                    divideSize: 2,
                    image: 'assets/images/user_2.png',
                  ),
                ]),
              )
            ],
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
