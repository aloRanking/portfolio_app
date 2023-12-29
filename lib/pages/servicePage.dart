import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/responsive.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
    mobile: MobileServicePage(),
        tablet: TabletServicePage(),
        desktop: DesktopServicePage());
  }

}

class DesktopServicePage extends StatelessWidget {
  const DesktopServicePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO bottom overflow for tablet
     var size = MediaQuery.of(context).size;
  return Container(
   // height: 500,
      child: Column(
      children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 56, horizontal: 140),
            child: Container(
              width: 1171,
              height: 599,

              //margin: EdgeInsets.symmetric(vertical: 56, horizontal: 140),
              decoration: ShapeDecoration(
                color: kCreamColor,
                image: DecorationImage(
                  image: AssetImage("images/random.png"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.97),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TabletServicePage extends StatelessWidget {
  const TabletServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO bottom overflow for tablet
    var size = MediaQuery.of(context).size;
    return Container(
      // height: 500,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 56, horizontal: 140),
            child: Container(
              width: 971,
              height: 350,

              //margin: EdgeInsets.symmetric(vertical: 56, horizontal: 140),
              decoration: ShapeDecoration(
                color: kCreamColor,
                image: DecorationImage(
                  image: AssetImage("images/random.png"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.97),
                ),
              ),
            ),
          )
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
        Container(
          width: 328.32,
          height: 167.94,
          margin: EdgeInsets.symmetric(vertical: 56, horizontal: 24),
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("images/random.png"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.97),
            ),
          ),
        )
        /* Image.asset('icons/userr.png')*/
      ],
    );
  }
}