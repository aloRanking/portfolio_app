import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    Key? key,
    this.hoverColor,
    this.buttonText,
    this.onPressed,
    this.borderColor,
  }) : super(key: key);
  final Color? hoverColor;
  final Color? borderColor;
  final String? buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      hoverColor: Colors.green,
      elevation: 6,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor!, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: borderColor!, width: 2.0),
            //color: Colors.black54
          ),
          child: Center(child: Text(buttonText!))),
    );
  }
}
