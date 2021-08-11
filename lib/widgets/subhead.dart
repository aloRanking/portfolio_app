import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors.dart';

class SubProfileHeadline extends StatelessWidget {
  const SubProfileHeadline({
    Key key,
    this.headline,
  }) : super(key: key);

  final String headline;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 5,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white60),
                  ),
                  Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: kGreenColor),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
