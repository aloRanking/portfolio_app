import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/constants.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/subhead.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
    mobile: MobileServicePage(), 
    tablet: DesktopServicePage(), 
    desktop: DesktopServicePage()
    );
  }

}

class DesktopServicePage extends StatelessWidget {
  const DesktopServicePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO bottom overflow for tablet
     var size = MediaQuery.of(context).size;
  return Container(
    //height: 500,
    child: Column(
      children: [
        SubProfileHeadline(
          headline: 'What i do',
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
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
      ],
    ),
  );
 
  }
}

class MobileServicePage extends StatelessWidget {
  const MobileServicePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
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
              ],
            );
 
  }
}