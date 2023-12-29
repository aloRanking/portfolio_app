import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:universal_html/js.dart' as js;

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({
    Key? key,
    this.controller1,
  }) : super(key: key);
  final PageController? controller1;

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> with SingleTickerProviderStateMixin{
  /* AnimationController? animationController;
   final PageController controller1 = PageController(initialPage: 0);

   @override
     void initState() {
       animationController = AnimationController(
        duration: const Duration(milliseconds: 8000), vsync: this);    
       super.initState();
     }

     @override
       void dispose() {
         animationController!.dispose();
         controller1.dispose();
         super.dispose();
       }*/

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobilePorfolioPage(),
        tablet: TabletPortfolioPage(
            //animationController: animationController,
            ),
        desktop: DesktopPortfolioPage(
            //animationController: animationController
            ));
  }

}

class DesktopPortfolioPage extends StatelessWidget {
  const DesktopPortfolioPage({
    Key? key,
    //required this.animationController,
  }) : super(key: key);

  //final AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
   return Column(
              children: [
        Text('Selected Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.manuale(
              color: kCreamColor,
              fontSize: 128,
              fontWeight: FontWeight.w700,
            )),
        Gap(16),
        Text('Deploying outstanding user applications ',
            textAlign: TextAlign.center,
            style: GoogleFonts.judson(
              color: kCreamColor,
              fontSize: 40,
              fontWeight: FontWeight.w400,
            )),
        Gap(56),
        Container(
          width: 800,
          //height: 636,
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 78),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: kCreamColor),
            ),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo - Hybrid Mobile App',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 564,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: kCreamColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
              Gap(24),
              Row(
                children: [
                  DesktopAppstoreItem(
                    image: 'icons/playstore.svg',
                    title: 'Get on Android',
                    onTapped: () {
                      js.context.callMethod('open', [foodeloPlaystore]);
                    },
                  ),
                  Gap(22),
                  DesktopAppstoreItem(
                    image: 'icons/apple_logo.svg',
                    title: 'Get on iOS',
                    onTapped: () {
                      js.context.callMethod('open', [foodeloAppstore]);
                    },
                  ),
                ],
              ),
              Gap(32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo For delivery Riders',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 564,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: kCreamColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
              Gap(24),
              Row(
                children: [
                  DesktopAppstoreItem(
                    image: 'icons/playstore.svg',
                    title: 'Get on Android',
                    onTapped: () {
                      js.context.callMethod('open', [foodeloRider]);
                    },
                  ),
                  Gap(22),
                  DesktopAppstoreItem(
                    image: 'icons/apple_logo.svg',
                    title: 'Get on iOS',
                    onTapped: () {
                      js.context.callMethod('open', [foodeloRider]);
                    },
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DesktopAppstoreItem extends StatelessWidget {
  const DesktopAppstoreItem({
    super.key,
    required this.image,
    required this.title,
    this.onTapped,
  });

  final String image;
  final String title;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 229.08,
        height: 64,
        padding: const EdgeInsets.all(15.89),
        decoration: ShapeDecoration(
          color: Color(0xFF191D23),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.66, color: kCreamColor),
            borderRadius: BorderRadius.circular(132.42),
          ),
        ),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                width: 31.78,
                height: 31.78,
              ),
              const SizedBox(width: 10.59),
              Column(
                children: [
                  Gap(20),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.89,
                      fontFamily: 'Judson',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabletPortfolioPage extends StatelessWidget {
  const TabletPortfolioPage({
    Key? key,
    //required this.animationController,
  }) : super(key: key);

  //final AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Selected Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.manuale(
              color: kCreamColor,
              fontSize: 60,
              fontWeight: FontWeight.w700,
            )),
        Gap(16),
        Text('Deploying outstanding user applications ',
            textAlign: TextAlign.center,
            style: GoogleFonts.judson(
              color: kCreamColor,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            )),
        Gap(56),
        Container(
          width: 700,
          //height: 636,
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 78),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: kCreamColor),
            ),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo - Hybrid Mobile App',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 38,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 464,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: kCreamColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Gap(24),
                  Row(
                    children: [
                      TabletAppStoreItem(
                        image: 'icons/playstore.svg',
                        title: 'Get on Android',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloPlaystore]);
                        },
                      ),
                      Gap(22),
                      TabletAppStoreItem(
                        image: 'icons/apple_logo.svg',
                        title: 'Get on iOS',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloAppstore]);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Gap(32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo For delivery Riders',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 38,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 564,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: kCreamColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Gap(24),
                  Row(
                    children: [
                      TabletAppStoreItem(
                        image: 'icons/playstore.svg',
                        title: 'Get on Android',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloRider]);
                        },
                      ),
                      Gap(22),
                      TabletAppStoreItem(
                        image: 'icons/apple_logo.svg',
                        title: 'Get on iOS',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloRider]);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TabletAppStoreItem extends StatelessWidget {
  const TabletAppStoreItem({
    super.key,
    required this.image,
    required this.title,
    this.onTapped,
  });

  final String image;
  final String title;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 200.08,
        height: 54,
        // padding: const EdgeInsets.all(15.89),
        decoration: ShapeDecoration(
          color: Color(0xFF191D23),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.66, color: kCreamColor),
            borderRadius: BorderRadius.circular(132.42),
          ),
        ),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                width: 31.78,
                height: 31.78,
              ),
              const SizedBox(width: 10.59),
              Column(
                children: [
                  Gap(32),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.89,
                      fontFamily: 'Judson',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobilePorfolioPage extends StatelessWidget {
  const MobilePorfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Selected Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.manuale(
              color: kCreamColor,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            )),
        Gap(16),
        Text('Deploying outstanding user applications ',
            textAlign: TextAlign.center,
            style: GoogleFonts.judson(
              color: kCreamColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )),
        Gap(24),
        Container(
          //width: 700,
          //height: 636,
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 43),
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: kCreamColor),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo - Hybrid Mobile App',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(4),
                  SizedBox(
                    width: 316.58,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: kCreamColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Gap(24),
                  Row(
                    children: [
                      MobilePlaystoreItem(
                        image: 'assets/icons/playstore.svg',
                        title: 'Get on Android',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloPlaystore]);
                        },
                      ),
                      Gap(22),
                      MobilePlaystoreItem(
                        image: 'assets/icons/apple_logo.svg',
                        title: 'Get on iOS',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloAppstore]);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Gap(32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo For delivery Riders',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(4),
                  SizedBox(
                    width: 316.58,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: kCreamColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Gap(24),
                  Row(
                    children: [
                      MobilePlaystoreItem(
                        image: 'assets/icons/playstore.svg',
                        title: 'Get on Android',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloRider]);
                        },
                      ),
                      Gap(22),
                      MobilePlaystoreItem(
                        image: 'assets/icons/apple_logo.svg',
                        title: 'Get on iOS',
                        onTapped: () {
                          js.context.callMethod('open', [foodeloRider]);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobilePlaystoreItem extends StatelessWidget {
  const MobilePlaystoreItem({
    super.key,
    required this.image,
    required this.title,
    this.onTapped,
  });

  final String image;
  final String title;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 128,
        height: 36,
        //padding: const EdgeInsets.all(15.89),
        decoration: ShapeDecoration(
          color: Color(0xFF191D23),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.66, color: kCreamColor),
            borderRadius: BorderRadius.circular(132.42),
          ),
        ),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                width: 17.84,
                height: 17.84,
              ),
              const SizedBox(width: 6),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'Judson',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}