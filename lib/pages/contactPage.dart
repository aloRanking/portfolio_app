import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils/responsive.dart';

import '../utils/colors.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key, this.scrollController}) : super(key: key);

  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileContactPage(
          controller: scrollController,
        ),
        tablet: TabletContactPage(controller: scrollController,),
      desktop: DesktopContactPage(controller: scrollController,));   
    
  }

}


class MobileContactPage extends StatelessWidget {
  const MobileContactPage({ Key? key, this.controller }) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text('Let’s work together',
            style: GoogleFonts.manuale(
              color: kCreamColor,
              fontSize: 32,
              fontWeight: FontWeight.w800,
            )),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(
                color: kCreamColor,
              ),
              Gap(32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 295,
                    child: Text(
                      'My inbox is always open, if you have an offer or want to say hello',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Gap(16),
                  SelectableText(
                    'alobently@outlook.com',
                    style: GoogleFonts.judson(
                      color: Color(0xFF11CDF6),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        //  BottomNavBar(controller: controller),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  controller!.animateTo(
                    controller!.position.minScrollExtent + 120,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                },
                icon: Icon(
                  Icons.arrow_upward,
                  color: kCreamColor,
                )),
            Gap(24),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        FooterWidget()
      ],
    );
  }
}


class TabletContactPage extends StatelessWidget {
  const TabletContactPage({ Key? key, this.controller }) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text('Let’s work together',
            style: GoogleFonts.manuale(
              color: kCreamColor,
              fontSize: 60,
              fontWeight: FontWeight.w800,
            )),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: Column(
            children: [
              Divider(
                color: kCreamColor,
              ),
              Gap(40),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Text(
                      'My inbox is always open, if you have an offer or want to say hello',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Gap(16),
                  SelectableText(
                    'alobently@outlook.com',
                    style: GoogleFonts.judson(
                      color: Color(0xFF11CDF6),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        //BottomNavBar(controller: controller),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  controller!.animateTo(
                    controller!.position.minScrollExtent + 120,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                },
                icon: Icon(
                  Icons.arrow_upward,
                  color: kCreamColor,
                )),
            Gap(30),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        FooterWidget()
      ],
    );
    /* return Column(
        children: [
          SizedBox(height: 50,),
          SizedBox(
            width:  0.73*size.width,
            height: 157,
            child: Text(
              'Let’s work together ',
              style: GoogleFonts.manuale(
                color: kCreamColor,
                fontSize: 128,
                fontWeight: FontWeight.w800,
              )
            ),
          ),
          ContactCard(
            width: 0.8*size.width,
            greetingTxtSize: 18,
            emailTxtSize: 28,
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButtons(),
            ],
          ),
          BottomNavBar(controller: controller),
           SizedBox(height: 20,),

           FooterWidget()

        ],
      );*/
  }
}


class DesktopContactPage extends StatelessWidget {
    const DesktopContactPage({ Key? key, this.controller }) : super(key: key);
    final ScrollController? controller;
  
    @override
    Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size;

    return Column(
        children: [
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 1063,
          height: 157,
          child: Text('Let’s work together ',
              style: GoogleFonts.manuale(
                color: kCreamColor,
                fontSize: 128,
                fontWeight: FontWeight.w800,
              )),
        ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 141.0),
          child: Column(
            children: [
              Divider(
                color: kCreamColor,
              ),
              Gap(48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 574,
                    child: Text(
                      'My inbox is always open, if you have an offer or want to say hello',
                      style: GoogleFonts.judson(
                        color: kCreamColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SelectableText(
                    'alobently@outlook.com',
                    style: GoogleFonts.judson(
                      color: Color(0xFF11CDF6),
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        //  BottomNavBar(controller: controller),
        Gap(32),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  controller!.animateTo(
                    controller!.position.minScrollExtent + 60,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                },
                icon: Icon(
                  Icons.arrow_upward,
                  color: kCreamColor,
                )),
            Gap(30),
          ],
        ),
        SizedBox(
          height: 20,
        ),

        FooterWidget()
      ],
      );
    }
  }

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueGrey[300],

      height: 70,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                '@ Alobently 2023. All rights reserved',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kCreamColor,
                    fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Made with Flutter ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF11CDF6),
                    fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key, this.greetingTxtSize, this.emailTxtSize, this.width,
  }) : super(key: key);

  final double? greetingTxtSize;
  final double? emailTxtSize;
  final double? width;

  @override
  Widget build(BuildContext context) {
    
    return Card(
      elevation: 12,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          height: 200,
          width: width,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  
            children: [
              Text('Hii, you can hit me up @',
              style: TextStyle(fontSize: greetingTxtSize),),
              SizedBox(height: 20,),
              SelectableText('alobently@outlook.com',
              style: TextStyle(fontSize: emailTxtSize,
              fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}

  class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
      child: Container(
        child: Column(
          
          children: [
           
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navBarOptions(
                    title: 'About',
                    position: 1,
                    function: () {
                      controller!.animateTo(
                        controller!.position.minScrollExtent + 120,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Service',
                    position: 1,
                    function: () {
                      controller!.animateTo(
                        0.30 * controller!.position.maxScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Portfolio',
                    position: 1,
                    function: () {
                      controller!.animateTo(
                         0.60 * controller!.position.maxScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Testimonial',
                    position: 1,
                    function: () {
                      controller!.animateTo(
                        0.8 * controller!.position.maxScrollExtent,
                         //controller.position.minScrollExtent +10,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}


  Widget navBarOptions({required String title, int? position, Function? function}) {
  return InkWell(
    onTap: function as void Function()?,
    // hoverColor: Colors.grey[200],
    borderRadius: BorderRadius.circular(16),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
