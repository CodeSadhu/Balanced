import 'package:flutter/material.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: 410,
            top: 80,
            child: Image.asset('assets/images/onboard_1.png', fit: BoxFit.fill),
          )
        ],
      ),
    );
  }
}
