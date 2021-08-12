import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_html/js.dart' as js;

class SocialButton extends StatelessWidget {
  final String? url;
  final IconData? icon;
  final Color? color;

  SocialButton({this.url, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: FaIcon(
          icon,
          size: 30,
          color: color,
        ),
        onPressed: () {
          js.context.callMethod('open', [url]);
        });
  }
}