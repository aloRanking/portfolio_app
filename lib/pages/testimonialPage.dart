import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/subhead.dart';
import 'package:portfolio_app/widgets/testimonial_item.dart';

class TestimonialPage extends StatelessWidget {
  const TestimonialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileTestimonial(),
        tablet: TabletTestimonialPage(),
        desktop: DesktopTestimonialPage());
  }
}

class DesktopTestimonialPage extends StatelessWidget {
  DesktopTestimonialPage({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

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
          child: Scrollbar(
            thumbVisibility: true,
            controller: _scrollController,
            child: ListView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                children: [
                  TestimonialItem(
                    size: size,
                    divideSize: 3,
                    image: ktestimonialImageUrl3,
                  ),
                  TestimonialItem(
                    size: size,
                    divideSize: 3,
                    image: ktestimonialImageUrl3,
                  ),
                  TestimonialItem(
                    size: size,
                    divideSize: 3,
                    image: ktestimonialImageUrl1,
                  ),
                  TestimonialItem(
                    size: size,
                    divideSize: 3,
                    image: ktestimonialImageUrl2,
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}

class TabletTestimonialPage extends StatelessWidget {
  TabletTestimonialPage({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

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
          child: Scrollbar(
            thumbVisibility: true,
            controller: _scrollController,
            child: ListView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                children: [
                  TestimonialItem(
                    size: size,
                    divideSize: 2,
                    image: ktestimonialImageUrl3,
                  ),
                  TestimonialItem(
                    size: size,
                    divideSize: 2,
                    image: ktestimonialImageUrl2,
                  ),
                  TestimonialItem(
                    size: size,
                    divideSize: 2,
                    image: ktestimonialImageUrl1,
                  ),
                  TestimonialItem(
                    size: size,
                    divideSize: 3,
                    image: ktestimonialImageUrl1,
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}

class MobileTestimonial extends StatefulWidget {
  @override
  State<MobileTestimonial> createState() => _MobileTestimonialState();
}

class _MobileTestimonialState extends State<MobileTestimonial> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.toInt();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
            controller: _pageController,
            children: [
              TestimonialItem(
                  size: size, divideSize: 1, image: ktestimonialImageUrl3),
              TestimonialItem(
                  size: size, divideSize: 1, image: ktestimonialImageUrl1),
              TestimonialItem(
                  size: size, divideSize: 1, image: ktestimonialImageUrl2)
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            currentPage == 0
                ? SizedBox.shrink()
                : ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16), backgroundColor: kGreenColor),
                    onPressed: () {
                      _pageController.previousPage(
                          duration: Duration(milliseconds: 700),
                          curve: Curves.ease);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    label: Text('Previous')),
            /**/

            currentPage == 3 - 1
                ? SizedBox.shrink()
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16), backgroundColor: kGreenColor),
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 700),
                          curve: Curves.ease);
                    },
                    child: Row(
                      children: [
                        Text('Next'),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ))
          ],
        )
      ],
    );
  }
}
