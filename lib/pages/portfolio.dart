import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/widgets/subhead.dart';

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
   AnimationController? animationController;
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
       }

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobilePorfolioPage(controller: controller1),
        tablet: TabletPortfolioPage(
          animationController: animationController,
        ),
        desktop:
            DesktopPortfolioPage(animationController: animationController));
  }

}

class DesktopPortfolioPage extends StatelessWidget {
  const DesktopPortfolioPage({
    Key? key,
    required this.animationController,
  }) : super(key: key);
  final AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
   return Column(
              children: [
        Text('Selected Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.manuale(
              color: Color(0xFFFFEFCD),
              fontSize: 128,
              fontWeight: FontWeight.w700,
            )),
        Gap(16),
        Text('Deploying outstanding user applications ',
            textAlign: TextAlign.center,
            style: GoogleFonts.judson(
              color: Color(0xFFFFEFCD),
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
              side: BorderSide(width: 1, color: Color(0xFFFFEFCD)),
            ),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo - Hybrid Mobile App',
                      style: GoogleFonts.judson(
                        color: Color(0xFFFFEFCD),
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 564,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: Color(0xFFFFEFCD),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
              Gap(24),
              Row(
                children: [
                  Container(
                    width: 229.08,
                    height: 64,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
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
                            'icons/playstore.svg',
                            width: 31.78,
                            height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on Android',
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
                    ),
                  ),
                  Gap(22),
                  Container(
                    width: 229.08,
                    height: 64,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
                        borderRadius: BorderRadius.circular(132.42),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // textBaseline: TextBaseline.ideographic,
                        //crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          SvgPicture.asset(
                            'icons/apple_logo.svg',
                            //width: 31.78,
                            // height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on iOS',
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
                    ),
                  ),
                ],
              ),
              Gap(32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo For delivery Riders',
                      style: GoogleFonts.judson(
                        color: Color(0xFFFFEFCD),
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 564,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: Color(0xFFFFEFCD),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
              Gap(24),
              Row(
                children: [
                  Container(
                    width: 229.08,
                    height: 64,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
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
                            'icons/playstore.svg',
                            width: 31.78,
                            height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on Android',
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
                    ),
                  ),
                  Gap(22),
                  Container(
                    width: 229.08,
                    height: 64,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
                        borderRadius: BorderRadius.circular(132.42),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // textBaseline: TextBaseline.ideographic,
                        //crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          SvgPicture.asset(
                            'icons/apple_logo.svg',
                            //width: 31.78,
                            // height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on iOS',
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
                    ),
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

class TabletPortfolioPage extends StatelessWidget {
  const TabletPortfolioPage({
    Key? key,
    required this.animationController,
  }) : super(key: key);
  final AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Selected Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.manuale(
              color: Color(0xFFFFEFCD),
              fontSize: 60,
              fontWeight: FontWeight.w700,
            )),
        Gap(16),
        Text('Deploying outstanding user applications ',
            textAlign: TextAlign.center,
            style: GoogleFonts.judson(
              color: Color(0xFFFFEFCD),
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
              side: BorderSide(width: 1, color: Color(0xFFFFEFCD)),
            ),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo - Hybrid Mobile App',
                      style: GoogleFonts.judson(
                        color: Color(0xFFFFEFCD),
                        fontSize: 38,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 464,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: Color(0xFFFFEFCD),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
              Gap(24),
              Row(
                children: [
                  Container(
                    width: 200.08,
                    height: 54,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
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
                            'icons/playstore.svg',
                            width: 31.78,
                            height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on Android',
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
                    ),
                  ),
                  Gap(22),
                  Container(
                    width: 200.08,
                    height: 54,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
                        borderRadius: BorderRadius.circular(132.42),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // textBaseline: TextBaseline.ideographic,
                        //crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          SvgPicture.asset(
                            'icons/apple_logo.svg',
                            //width: 31.78,
                            // height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on iOS',
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
                    ),
                  ),
                ],
              ),
              Gap(32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Foodelo For delivery Riders',
                      style: GoogleFonts.judson(
                        color: Color(0xFFFFEFCD),
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                      )),
                  Gap(8),
                  SizedBox(
                    width: 564,
                    child: Text(
                        'Foodelo is an online food delivery solution that allows people to order food online and get it delivered to their homes',
                        style: GoogleFonts.judson(
                          color: Color(0xFFFFEFCD),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
              Gap(24),
              Row(
                children: [
                  Container(
                    width: 200.08,
                    height: 54,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
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
                            'icons/playstore.svg',
                            width: 31.78,
                            height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on Android',
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
                    ),
                  ),
                  Gap(22),
                  Container(
                    width: 200.08,
                    height: 54,
                    padding: const EdgeInsets.all(15.89),
                    decoration: ShapeDecoration(
                      color: Color(0xFF191D23),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.66, color: Color(0xFFFFEFCD)),
                        borderRadius: BorderRadius.circular(132.42),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // textBaseline: TextBaseline.ideographic,
                        //crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          SvgPicture.asset(
                            'icons/apple_logo.svg',
                            //width: 31.78,
                            // height: 31.78,
                          ),
                          const SizedBox(width: 10.59),
                          Text(
                            'Get on iOS',
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
                    ),
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

class MobilePorfolioPage extends StatelessWidget {
  final PageController? controller;

  const MobilePorfolioPage({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                SubProfileHeadline(
                  headline: 'My Selected Work',
                ),
                Container(
                  height: 300,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      Image.asset('images/pjctsnap.jpg'),
                      Image.asset('images/hagglexsnap.jpg'),
                      Image.asset('images/lfdssnap.jpg'),
                      Image.asset('images/foodsnap.jpg'),
                      Image.asset('images/moviesnap.jpg'),
                    ],
                  ),
                ),
              ],
            );
  }
}