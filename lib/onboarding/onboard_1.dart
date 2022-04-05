import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/onboard_1.svg'),
        ],
      ),
    );
  }
}
