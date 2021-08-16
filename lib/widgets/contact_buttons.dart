import 'package:flutter/material.dart';

import 'package:portfolio_app/utils/colors.dart';
import 'package:portfolio_app/utils/strings.dart';

import 'hover_button.dart';
import 'package:universal_html/js.dart' as js;



class ContactButtons extends StatelessWidget {
  const ContactButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HoverBtn(
            onPressed: () {
               js.context.callMethod('open', [downloadCV]);
            },
            borderColor: kGreenColor,
            buttonText: 'DOWNLOAD CV',
            hoverColor: kGreenColor,
            hoverTextColor: kWhiteColor,
          ),
          SizedBox(
            width: 13,
          ),
          HoverBtn(
              onPressed: () {},
              hoverColor: kGreenColor,
              borderColor: Colors.grey,
              buttonText: 'Contact',
              hoverTextColor: kWhiteColor),
        ],
      ),
    );
  }
}
