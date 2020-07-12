import 'package:swadeshiandolan/pages/frontpage/footer.dart';
import 'package:swadeshiandolan/pages/frontpage/middle.dart';
import 'package:swadeshiandolan/utils/colors.dart';
import 'package:swadeshiandolan/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        Navbar(),
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
