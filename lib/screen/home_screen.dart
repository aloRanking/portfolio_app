import 'package:flutter/material.dart';
import 'package:portfolio_app/screen/desktop/desktop_screen.dart';
import 'package:portfolio_app/screen/mobile/mobile_view_screen.dart';
import 'package:portfolio_app/screen/tablet/tablet_view_screen.dart';
import 'package:portfolio_app/utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body:SafeArea(
        child: Responsive(
          mobile: MobileViewScreen(),
            tablet: TabletViewScreen(),
            desktop: DesktopViewScreen(),
          ),
      )

    );
  }
}
