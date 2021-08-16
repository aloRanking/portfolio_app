
import 'package:flutter/material.dart';

import 'package:portfolio_app/model/selected_work.dart';
import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/responsive.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:portfolio_app/widgets/projectItem.dart';
import 'package:portfolio_app/widgets/subhead.dart';
import 'package:universal_html/js.dart' as js;

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({
    Key? key,
    this.controller1,
  }) : super(key: key);
  final PageController? controller1;

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> with SingleTickerProviderStateMixin{
   AnimationController? animationController;
   final PageController controller1 = PageController(initialPage: 0);
  

   @override
     void initState() {
       animationController = AnimationController(
        duration: const Duration(milliseconds: 8000), vsync: this);    
       super.initState();
     }

     @override
       void dispose() {
         animationController!.dispose();
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
   DesktopPortfolioPage({
    Key? key,
    required this.animationController,
  }) : super(key: key);
  final AnimationController? animationController;
  

  @override
  Widget build(BuildContext context) {
   return Column(
              children: [
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubProfileHeadline(
                      headline: 'My Selected Work',
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right:16.0),
                      child: GestureDetector(
                        onTap: (){
                          js.context.callMethod('open', [github]);
                          
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red[900]
                          ),
                          child: Text('View all Work',
                          style: TextStyle(color: kWhiteColor),),
                        ),
                      ),
                    )
                  ],
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
                                            parent: animationController!,
                                            curve: Interval(
                                                (1 / count) * index, 1.0,
                                                curve: Curves.fastOutSlowIn)));
                                animationController!.forward();
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
 final PageController? controller;

  const MobilePorfolioPage({Key? key, this.controller}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubProfileHeadline(
                      headline: 'My Selected Work',
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right:16.0),
                      child: GestureDetector(
                        onTap: (){
                          js.context.callMethod('open', [github]);
                          
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red[900]
                          ),
                          child: Text('View all Work',
                          style: TextStyle(color: kWhiteColor),),
                        ),
                      ),
                    )
                  ],
                ),Container(
                  height: 450,
                  width: width-50,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    itemCount: selectedProjects.length,
                    itemBuilder: (context, index){
                      return MobileProjectItem(
                        project:selectedProjects[index] ,
                      );

                    }
                   /*  children: [
                      Image.asset(kProjectImageUrl1),
                      Image.asset(kProjectImageUrl2),
                      Image.asset(kProjectImageUrl3),
                      Image.asset(kProjectImageUrl4),
                      Image.asset(kProjectImageUrl5),
                    ], */
                  ),
                ),
              ],
            );
  }
}