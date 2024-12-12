import 'package:flutter/material.dart';
import 'package:resume/src/pages/mobile/mobile_home_page.dart';
import 'package:resume/src/pages/web/web_home_page.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    super.key,
    this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  });

  static double aspectRadio(BuildContext context){
     //MediaQueryData queryData;
    return MediaQuery.of(context).devicePixelRatio;
  }
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSmallScreen(context)? MobileHomePage() : WebHomePage(),
    );
  }
}