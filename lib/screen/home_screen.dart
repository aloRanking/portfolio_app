import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/contactPage.dart';
import 'package:portfolio_app/pages/aboutPage.dart';
import 'package:portfolio_app/pages/portfolio.dart';
import 'package:portfolio_app/pages/servicePage.dart';
import 'package:portfolio_app/pages/testimonialPage.dart';
import 'package:portfolio_app/pages/topNavbar.dart';
import 'package:portfolio_app/utils/strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //project images
  late Image work1Image;
  late Image work2Image;
  late Image work3Image;
  late Image work4Image;
  late Image work5Image;
  late Image tst1Image;
  late Image tst2Image;
  late Image profleImage;

  @override
  void initState() {
    initImages();


    super.initState();
  }

  void initImages() {
     profleImage = Image.asset(kProfileImageUrl);
    work1Image =Image.asset(kProjectImageUrl1);
    work2Image = Image.asset(kProjectImageUrl2);
    work3Image = Image.asset(kProjectImageUrl3);
    work4Image = Image.asset(kProjectImageUrl4);
    work5Image = Image.asset(kProjectImageUrl5);
    tst1Image = Image.asset(ktestimonialImageUrl1);
    tst2Image = Image.asset(ktestimonialImageUrl2);
  }

  @override
  void didChangeDependencies() {
  
    super.didChangeDependencies();
    preLoadImages();

  }

  void preLoadImages() {
     precacheImage(profleImage.image, context);
    precacheImage(work1Image.image, context);
    precacheImage(work2Image.image, context);
    precacheImage(work3Image.image, context);
    precacheImage(work4Image.image, context);
    precacheImage(work5Image.image, context);
    precacheImage(tst1Image.image, context);
    precacheImage(tst1Image.image, context);
    precacheImage(tst2Image.image, context);
  }


  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Scrollbar(
        child: ListView(
          controller: scrollController,
          physics: BouncingScrollPhysics(),
          children: [
            TopNavBar(controller: scrollController),
            AboutPage(),
            ServicesPage(),
            PortfolioPage(),
            TestimonialPage(),
            ContactPage(
              scrollController: scrollController,
            )
          ],
        ),
      ),
    );
  }
}
