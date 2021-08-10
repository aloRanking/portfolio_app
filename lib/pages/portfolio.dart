import 'package:flutter/material.dart';

import 'package:portfolio_app/model/selected_work.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/widgets/projectItem.dart';
import 'package:portfolio_app/widgets/subhead.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({
    Key key,
    this.controller1,
  }) : super(key: key);
  final PageController controller1;

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> with SingleTickerProviderStateMixin{
   AnimationController animationController;
   final PageController controller1 = PageController(initialPage: 0);

   @override
     void initState() {
       animationController = AnimationController(
        duration: const Duration(milliseconds: 8000), vsync: this);    
       super.initState();
     }

     @override
       void dispose() {
         animationController.dispose();
         controller1.dispose();
         super.dispose();
       }

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: MobilePorfolioPage(controller: controller1), 
    tablet: DesktopPortfolioPage(animationController: animationController,), 
    desktop: DesktopPortfolioPage(animationController: animationController));
  }

}

class DesktopPortfolioPage extends StatelessWidget {
  const DesktopPortfolioPage({
    Key key,
    @required this.animationController,
  }) : super(key: key);
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
   return Column(
              children: [
                SubProfileHeadline(
                  headline: 'My Selected Work',
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    height: 360,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: selectedProjects.length,
                        itemBuilder: (context, index) {
                          final int count =
                                    selectedProjects.length > 10 ? 10 : selectedProjects.length;
                                final Animation<double> animation =
                                    Tween<double>(begin: 0.0, end: 1.0).animate(
                                        CurvedAnimation(
                                            parent: animationController,
                                            curve: Interval(
                                                (1 / count) * index, 1.0,
                                                curve: Curves.fastOutSlowIn)));
                                animationController.forward();
                          return ProjectItem(
                            project: selectedProjects[index],
                            animation: animation,
                            animationController: animationController,
                          );
                        })),
              ],
            );
 
  }
}

class MobilePorfolioPage extends StatelessWidget {
 final PageController controller;

  const MobilePorfolioPage({Key key, this.controller}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                SubProfileHeadline(
                  headline: 'My Selected Work',
                ),
                Container(
                  height: 300,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      Image.asset('images/pjctsnap.jpg'),
                      Image.asset('images/hagglexsnap.jpg'),
                      Image.asset('images/lfdssnap.jpg'),
                      Image.asset('images/foodsnap.jpg'),
                      Image.asset('images/moviesnap.jpg'),
                    ],
                  ),
                ),
              ],
            );
  }
}