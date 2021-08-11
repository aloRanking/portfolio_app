import 'package:flutter/material.dart';

import 'package:portfolio_app/utils/responsive.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key key,
    @required this.controller,
  }) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileTopNavBar(controller: controller),
        tablet: TabletTopNavBar(
          controller: controller,
        ),
        desktop: TabletTopNavBar(
          controller: controller,
        ));
  }
}

class TabletTopNavBar extends StatelessWidget {
  TabletTopNavBar({
    Key key,
    @required this.controller,
  }) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'AloBently',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navBarOptions(
                    title: 'About',
                    position: 1,
                    function: () {
                      controller.animateTo(
                        controller.position.minScrollExtent + 120,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Service',
                    position: 1,
                    function: () {
                      controller.animateTo(
                        0.50 * controller.position.maxScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Portfolio',
                    position: 1,
                    function: () {
                      controller.animateTo(
                         0.80 * controller.position.maxScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Testimonial',
                    position: 1,
                    function: () {
                      controller.animateTo(
                        1 * controller.position.maxScrollExtent,
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


class MobileTopNavBar extends StatelessWidget {
  MobileTopNavBar({
    Key key,
    @required this.controller,
  }) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
      child: Container(
        child: Column(
          
          children: [
            Text(
              'AloBently',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navBarOptions(
                    title: 'About',
                    position: 1,
                    function: () {
                      controller.animateTo(
                        controller.position.minScrollExtent + 120,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Service',
                    position: 1,
                    function: () {
                      controller.animateTo(
                        0.50 * controller.position.maxScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Portfolio',
                    position: 1,
                    function: () {
                      controller.animateTo(
                         0.80 * controller.position.maxScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }),
                navBarOptions(
                    title: 'Testimonial',
                    position: 1,
                    function: () {
                      controller.animateTo(
                        1 * controller.position.maxScrollExtent,
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
Widget navBarOptions({String title, int position, Function function}) {
  return InkWell(
    onTap: function,
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
