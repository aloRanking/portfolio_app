import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/contact_buttons.dart';
import 'package:portfolio_app/widgets/social_button.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: Duration(milliseconds: 1200),
      duration: Duration(milliseconds: 1000),
      child: Container(
        //width: 400,
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
                style: GoogleFonts.lobster(
                  textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold))

                ),
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
            /* SizedBox(
              height: 20,
            ),
             ContactButtons(), */
            SizedBox(
              height: 20,
            ),
            Bounce(
              delay: Duration(milliseconds: 2500),
              duration: Duration(milliseconds: 1000),
              child: SocialButtons(),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutImage extends StatelessWidget {
  const AboutImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
