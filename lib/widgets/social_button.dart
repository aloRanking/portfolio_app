import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/utils/strings.dart';
import 'package:universal_html/js.dart' as js;

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              size: 30,
              color: Colors.blue[700],
            ),
            onPressed: () {
              js.context.callMethod('open', [linkedIn]);
            }),
        SizedBox(
          width: 15,
        ),
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.twitter,
              size: 30,
              color: Colors.blue,
            ),
            onPressed: () {
              js.context.callMethod('open', [twitter]);
            }),
        SizedBox(
          width: 15,
        ),
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.github,
              size: 30,
            ),
            onPressed: () {
              js.context.callMethod('open', [github]);
            })
      ],
    );
  }
}

