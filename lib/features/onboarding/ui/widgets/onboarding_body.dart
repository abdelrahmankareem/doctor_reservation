import 'package:doctor/features/onboarding/ui/widgets/logo_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import 'custom_button.dart';
import 'doctor_image_text_widget.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const LogoAndNameWidget(),
            SizedBox(
              height: 32.h,
            ),
            const DoctorimageAndTextWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                children: [
                  Text(
                    "Manage and schedule all of your medical appointments easily\nwith Docdoc to get a new experience.",
                    style: TextStyles.font10Grey400Weight,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const CustomGetStartButton()
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
