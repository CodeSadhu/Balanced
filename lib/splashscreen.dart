import 'package:balanced/onboarding/onboard_1.dart';
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
            SvgPicture.asset('assets/images/logo.svg',
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
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
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
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              // alignment: Alignment.bottomCenter,
              // margin: const EdgeInsets.only(top: 40),
              // height: 60,
              child: ElevatedButton(
                // style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder()),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OnboardOne()));
                },
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: gradientColor1,
                  size: 30,
                ),
              ),
            )
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
