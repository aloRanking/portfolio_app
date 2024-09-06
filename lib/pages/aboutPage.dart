import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/social_button.dart';
import 'package:universal_html/js.dart' as js;

import '../utils/colors.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileHomePage(),
        tablet: TabletHomPage(),
        desktop: DesktopHomPage());
  }
}

class DesktopHomPage extends StatelessWidget {
  const DesktopHomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: Duration(milliseconds: 1000),
      duration: Duration(milliseconds: 1000),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 133.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText('Hello,',
                        textStyle: GoogleFonts.marckScript(
                          color: kCreamColor,
                          fontSize: 128,
                        ))
                  ]),
                  /* Text('Hello,',
                      style: GoogleFonts.marckScript(
                        color: kCreamColor,
                        fontSize: 128,
                      )),*/
                  SocialButtons(),
                ],
              ),
            ),
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText('I’m Adigun Alo,',
                  textStyle: GoogleFonts.manuale(
                    color: kCreamColor,
                    fontSize: 128,
                    fontWeight: FontWeight.w800,
                  ))
            ]),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Container(
                  width: 265,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: kCreamColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: SizedBox(
                    width: 723,
                    child: Text(
                        mini_summary_text,
                         style: GoogleFonts.judson(
                          color: Color(0xFF11CDF6),
                          fontSize: 40,
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 48,
            ),
            ZoomIn(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: GoogleFonts.manuale(
                        color: kCreamColor,
                        fontSize: 128,
                        fontWeight: FontWeight.w800,
                        height: 1.4),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 799,
                    child: Text(
                      aboutMe_txt,
                      style: GoogleFonts.manuale(
                        color: kCreamColor,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  DownloadResumeButton(
                    title: 'Download My Resume',
                    onTap: () {
                      js.context.callMethod('open', [downloadCV]);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



class TabletHomPage extends StatelessWidget {
  const TabletHomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: Duration(milliseconds: 1000),
      duration: Duration(milliseconds: 1000),
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText('Hello',
                      textStyle: GoogleFonts.marckScript(
                        color: kCreamColor,
                        fontSize: 80,
                      ))
                ]),
                SocialButtons(),
              ],
            ),
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText('I’m Adigun Alo,',
                  textStyle: GoogleFonts.manuale(
                    color: kCreamColor,
                    fontSize: 60,
                    fontWeight: FontWeight.w800,
                  ))
            ]),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 350,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: kCreamColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(48),
            SizedBox(
              // width: 723,
              child: Text(
                  mini_summary_text,
                  style: GoogleFonts.judson(
                    color: Color(0xFF11CDF6),
                    fontSize: 25,
                  )),
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              'About Me',
              style: GoogleFonts.manuale(
                  color: kCreamColor,
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                  height: 1.4),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 799,
              child: Text(
                aboutMe_txt,
                style: GoogleFonts.manuale(
                  color: kCreamColor,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            DownloadResumeButton(
              title: 'Download My Resume',
              onTap: () {
                js.context.callMethod('open', [downloadCV]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        // buildImageMobile(),
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

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                js.context.callMethod('open', [linkedIn]);
                              },
                              child: SvgPicture.asset(
                                'assets/icons/bi_linkedin.svg',
                                width: 24,
                                height: 24,
                              )),
                          SizedBox(
                            width: 14,
                          ),
                          InkWell(
                              onTap: () {
                                js.context.callMethod('open', [linkedIn]);
                              },
                              child: SvgPicture.asset(
                                'assets/icons/github.svg',
                                width: 24,
                                height: 24,
                              )),
                          SizedBox(
                            width: 14,
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(57),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedTextKit(animatedTexts: [
                            TypewriterAnimatedText('Hello,',
                                textStyle: GoogleFonts.marckScript(
                                  color: kCreamColor,
                                  fontSize: 84,
                                  height: 1.04,
                                ))
                          ]),
                          /* Text('Hello,',
                              style: GoogleFonts.marckScript(
                                color: kCreamColor,
                                fontSize: 84,
                                height: 1.04,
                              )),*/
                          AnimatedTextKit(animatedTexts: [
                            TypewriterAnimatedText('I’m Adigun Alo,',
                                textStyle: GoogleFonts.manuale(
                                  color: kCreamColor,
                                  fontSize: 46,
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                ))
                          ]),
                          /* Text('I’m Adigun Alo',
                              style: GoogleFonts.manuale(
                                color: kCreamColor,
                                fontSize: 46,
                                fontWeight: FontWeight.w800,
                                height: 1.4,
                              )),*/
                        ],
                      ),
                    ],
                  ),
                  Gap(48),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 265,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: kCreamColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(24),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 46),
              child: Text(
                  mini_summary_text,
                  style: GoogleFonts.judson(
                    color: Color(0xFF11CDF6),
                    fontSize: 16,
                  )),
            ),
            Gap(48),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'About Me',
                        style: GoogleFonts.manuale(
                          color: kCreamColor,
                          fontSize: 48,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Gap(24),
                  Text(
                    aboutMe_txt,
                    style: GoogleFonts.manuale(
                      color: kCreamColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Bounce(
                      delay: Duration(milliseconds: 2500),
                      duration: Duration(milliseconds: 1000),
                      child:DownloadResumeButton(
                        title: 'Download My Resume',
                        onTap: () {
                          js.context.callMethod('open', [downloadCV]);
                        },
                      ),),
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
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.white54),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 200,
            width: 200,
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


class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({
    super.key, this.onTap, required this.title,
  });

  final Function()? onTap;
  final String title;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 297,
        height: 64,
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Color(0xFF11CDF6),
            borderRadius: BorderRadius.circular(8)),
        child: Text(title,
            style: GoogleFonts.judson(
              color: Color(0xFF000501),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )),
      ),
    );
  }
}
