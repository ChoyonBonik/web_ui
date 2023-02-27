import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context){
    return MediaQuery.of(context).size.width < 800;
  }

  static bool islargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context){
  return MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width <= 1200;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrints){
      if(constrints.maxWidth > 1200){
        return largeScreen;
      } else if(constrints.maxWidth <= 1200 && constrints.maxWidth >= 800) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }

    });
  }
}
