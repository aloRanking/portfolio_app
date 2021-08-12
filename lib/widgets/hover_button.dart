
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class HoverBtn extends StatelessWidget {
  const HoverBtn({
    Key? key,
    this.hoverColor,
    this.buttonText,
    this.onPressed,
    this.borderColor,
    this.hoverTextColor,
  }) : super(key: key);
  final Color? hoverColor;
  final Color? borderColor;
  final Color? hoverTextColor;
  final String? buttonText;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      onpressed: onPressed as void Function(),
      hoverColor: hoverColor,
      hoverTextColor: hoverTextColor,
      height: 50,
      hoverPadding: EdgeInsets.only(left: 15, right: 15),
      minWidth: 100,
      elevation: 2,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor!, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Container(
        //width: 100,
        // height: 30,
          child: Center(child: Text(buttonText!))),
    );
  }
}