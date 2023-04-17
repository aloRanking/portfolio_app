import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/strings.dart';

class TestimonialItem extends StatelessWidget {
  const TestimonialItem({
    Key? key,
    required this.size,
    this.image,
    this.divideSize,
    this.text,
  }) : super(key: key);

  final Size size;
  final String? image;
  final int? divideSize;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: size.width / divideSize!,
        ),
        Positioned(
          top: 50,
          left: 40,
          right: 20,
          child: Container(
              width: size.width - 60,
              height: 200,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 2)),
              child: Stack(
                children: [
                  Container(),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        text ?? kProjectTestimonialText,
                        style: TextStyle(
                            fontSize: 18, fontStyle: FontStyle.italic),
                      )),
                ],
              )),
        ),
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image!),
              )),
        ),
      ],
    );
  }
}
