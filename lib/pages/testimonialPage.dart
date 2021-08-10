import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/widgets/subhead.dart';
import 'package:portfolio_app/widgets/testimonial_item.dart';

class TestimonialPage extends StatelessWidget {
  const TestimonialPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return Responsive(
      mobile: MobileTestimonial(), 
      tablet: TabletTestimonialPage(), 
      desktop: DesktopTestimonialPage());
  }

 


 
}

class DesktopTestimonialPage extends StatelessWidget {
  const DesktopTestimonialPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   return Column(
              children: [
                SubProfileHeadline(
                  headline: 'testimonials',
                ),
                Container(
                  height: 300,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:[
                         TestimonialItem(
                      size: size,
                      divideSize: 3,
                      image: 'assets/images/user_2.png',
                    ),
                    TestimonialItem(
                      size: size,
                      divideSize: 3,
                      image: 'assets/images/user_2.png',
                    ),
                     TestimonialItem(
                      size: size,
                      divideSize: 3,
                      image: 'assets/images/user_2.png',
                    ),
                    TestimonialItem(
                      size: size,
                      divideSize: 3,
                      image: 'assets/images/user_2.png',
                    ),
                 
                 

                       ] ),
                ),
              ],
            );
 
  }
}

class TabletTestimonialPage extends StatelessWidget {
  const TabletTestimonialPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
              children: [
                SubProfileHeadline(
                  headline: 'testimonials',
                ),
                Container(
                  height: 300,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:[
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
                     TestimonialItem(
                      size: size,
                      divideSize: 2,
                      image: 'assets/images/user_2.png',
                    ),
                    TestimonialItem(
                      size: size,
                      divideSize: 3,
                      image: 'assets/images/user_2.png',
                    ),
                 
                 

                       ] ),
                ),
              ],
            );
 
  }
}

class MobileTestimonial extends StatelessWidget {
  /* const MobileTestimonial({
    Key key,
    @required this.controller,
    @required this.size,
  }) : super(key: key);

  final PageController controller;
  final Size size; */
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SubProfileHeadline(
          headline: 'testimonials',
        ),
        Container(
          height: 300,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: [
              TestimonialItem(size: size,
              divideSize: 1,
              image: 'assets/images/user_2.png'),
               TestimonialItem(size: size,
              divideSize: 1,
              image: 'assets/images/user_3.png'),
               TestimonialItem(size: size,
              divideSize: 1,
              image: 'assets/images/user_2.png')],
          ),
        ),
      ],
    );
  }
}

