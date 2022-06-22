import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  late Image work6Image;
  late Image work7Image;
  late Image tst1Image;
  late Image tst2Image;
  late Image profleImage;

  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  void _handleKeyEvent(RawKeyEvent event) {
    var offset = _scrollController.offset;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      setState(() {
        if (kReleaseMode) {
          _scrollController.animateTo(offset - 120,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        } else {
          _scrollController.animateTo(offset - 120,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        }
      });
    } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      setState(() {
        if (kReleaseMode) {
          _scrollController.animateTo(offset + 120,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        } else {
          _scrollController.animateTo(offset + 120,
              duration: Duration(milliseconds: 30), curve: Curves.ease);
        }
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    initImages();

    super.initState();
  }
//init images
  void initImages() {
    profleImage = Image.asset(kProfileImageUrl);
    work1Image = Image.asset(kProjectImageUrl1);
    work2Image = Image.asset(kProjectImageUrl2);
    work3Image = Image.asset(kProjectImageUrl3);
    work4Image = Image.asset(kProjectImageUrl4);
    work5Image = Image.asset(kProjectImageUrl5);
    work6Image = Image.asset(kProjectImageUrl6);
    work7Image = Image.asset(kProjectImageUrl7);
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
    precacheImage(work6Image.image, context);
    precacheImage(work7Image.image, context);
    precacheImage(tst1Image.image, context);
    precacheImage(tst1Image.image, context);
    precacheImage(tst2Image.image, context);
  }


  @override
  Widget build(BuildContext context) {
    //ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: RawKeyboardListener(
        onKey: _handleKeyEvent,
        focusNode: _focusNode,
        autofocus: true,

        
         
        child: DraggableScrollbar.rrect(
          controller: _scrollController,
          child: ListView(
          controller: _scrollController,
          //physics: BouncingScrollPhysics(),
          children: [
            TopNavBar(controller: _scrollController),
            AboutPage(),
            ServicesPage(),
            PortfolioPage(),
            TestimonialPage(),
            ContactPage(
              scrollController: _scrollController,
            )
          ],
          ),
        ),
      ),
    );
  }
}
