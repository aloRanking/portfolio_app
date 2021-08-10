import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/screen/mobile/mobile_view_screen.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/contact_buttons.dart';
import 'package:portfolio_app/widgets/social_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileHomePage(), 
      tablet: DesktopHomPage(), 
      desktop: DesktopHomPage());
  }


  

 
  
}

class DesktopHomPage extends StatelessWidget {
  const DesktopHomPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
                children: [
                  SizedBox(
                    height: 100,
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
                ],
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

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      delay: Duration(milliseconds: 100),
      duration: Duration(milliseconds: 1000),
      child: Container(
        width: 300,
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
                child: Text(
              aboutMe_txt,
              textAlign: TextAlign.justify,
              style: TextStyle(wordSpacing: 3, height: 1.5),
            )),
            SizedBox(
                  height: 10,
                ),
                //buildContactButtons(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContactButtons(),
                  ],
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SocialButtons(),
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
                  image: AssetImage('assets/images/aloranking.jpeg'),
                )),
          ),
        ),
      ),
    );
  }

}