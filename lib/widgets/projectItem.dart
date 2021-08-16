import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_app/model/selected_work.dart';
import 'package:universal_html/js.dart' as js;

class ProjectItem extends StatelessWidget {
  final Project? project;
   final AnimationController? animationController;
  final Animation<dynamic>? animation;

  const ProjectItem({Key? key, this.project, this.animationController, this.animation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (context, snapshot) {
        return Transform(
          transform: Matrix4.translationValues(
                50 * (1.0 - animation!.value), 0.0,  0.0),
          child: Padding(
            padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 8),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          project!.image,
                          //width: 300,
                          //height: 250,
                          fit: BoxFit.contain,
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Text(
                          project!.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(project!.subtitle),
                        SizedBox(
                          height: 8,
                        ),
                        TextButton(
                            onPressed: () {
                              js.context.callMethod('open', [project!.url]);
                            },
                            child: Text(
                              'Check it out',
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
    // return Image.asset('images/pjctsnap.jpg');
  }
}

class MobileProjectItem extends StatelessWidget {
  const MobileProjectItem({ Key? key, this.project }) : super(key: key);
   final Project? project;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 8),
      child: Container(
        width: 150,
        child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          //width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                               topRight: Radius.circular(8)
                            ),
                            child: Image.asset(
                              project!.image,
                              //width: 300,
                              //height: 250,
                              //fit: BoxFit.contain,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              project!.title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(project!.subtitle),
                            SizedBox(
                              height: 8,
                            ),
                            TextButton(
                                onPressed: () {
                                  js.context.callMethod('open', [project!.url]);
                                },
                                child: Text(
                                  'Check it out',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      ),
    );
          
  }
}