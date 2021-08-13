import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/aboutPageWidgets.dart';
import 'package:portfolio_app/widgets/social_button.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileHomePage(), 
      tablet: DesktopHomPage(), 
      desktop: DesktopHomPage());
  }
}

class DesktopHomPage extends StatelessWidget {
  const DesktopHomPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        //height: 500,
        child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       AboutImage(),
                        SizedBox(
                          width: 50,
                        ),
                        Flexible(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AboutProfile(),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
      ),
    );
 
  }

  

}


class MobileHomePage extends StatelessWidget {
  const MobileHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
     return Column(
             children: [
                SizedBox(
              height: 20,
            ),
            buildImageMobile(),
            buildProfileMobile(),  
             ],
           );
  }

  buildProfileMobile() {
    return FadeIn(
      delay: Duration(milliseconds: 1000),
      duration: Duration(milliseconds: 1000),
      child: Container(
        //width: 350,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text('Flutter Developer',
                style: TextStyle(
                    letterSpacing: 2, fontSize: 16, color: Color(0xFFCACACA))),
            SizedBox(
              height: 15,
            ),
            Text('ADIGUN ALO',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
              aboutMe_txt,
              textAlign: TextAlign.justify,
              style: TextStyle(wordSpacing: 3, height: 1.5),
            )),
           /*  SizedBox(
                  height: 10,
                ),
                //buildContactButtons(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContactButtons(),
                  ],
                ), */
                SizedBox(
                  height: 10,
                ),
               Swing(
                 delay: Duration(milliseconds: 2500),
      duration: Duration(milliseconds: 1000),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     SocialButtons(),
                   ],
                 ),
               ),
               
                SizedBox(
                  height: 10,
                ),
          ],
        ),
      ),
    );
  }

  buildImageMobile() {
    return ZoomIn(
      duration: Duration(milliseconds: 1190),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white54),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(kProfileImageUrl),
                )),
          ),
        ),
      ),
    );
  }

}