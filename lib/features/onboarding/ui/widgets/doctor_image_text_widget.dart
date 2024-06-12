import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorimageAndTextWidget extends StatelessWidget {
  const DoctorimageAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/background.svg"),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ])),
            child: Image.asset("assets/images/doctor.png")),
        Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            child: Text(
              'Best Doctor\nAppointment App',
              style: TextStyles.font32Blue700Weight.copyWith(height: 1.4),
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
