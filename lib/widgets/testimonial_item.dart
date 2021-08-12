import 'package:flutter/material.dart';

class TestimonialItem extends StatelessWidget {
  const TestimonialItem({
    Key? key,
    required this.size, this.image, this.divideSize,
  }) : super(key: key);

  final Size size;
  final String? image;
  final int? divideSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: size.width/divideSize!,
        ),
        Positioned(
          top: 50,
          left: 40,
          right: 20,
          child: Container(
            width: size.width - 60,
            height: 200,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 2)),
          ),
        ),
        Container(
          height: 100,
          width: 100,
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
