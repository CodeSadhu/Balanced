import 'dart:ui';

import 'package:balanced/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> backgroundGradients = [
      gradientColor1,
      gradientColor2,
    ];
    return Container(
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/logo.svg',
                fit: BoxFit.cover, height: 115, width: 141),
            Text('Balanced',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 35)),
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: 230,
              height: 40,
              child: Text('By Reva',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 39),
              width: 200,
              height: 50,
              child: Text('Your financial freedom starts today!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(shape: CircleBorder()),
                onPressed: () {},
                child: const Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: backgroundGradients,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    );
  }
}
