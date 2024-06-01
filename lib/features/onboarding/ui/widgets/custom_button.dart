import 'package:doctor/core/helpers/navigation.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGetStartButton extends StatelessWidget {
  const CustomGetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          minimumSize: WidgetStatePropertyAll(
            Size(double.infinity, 50.h),
          ),
          backgroundColor:
              const WidgetStatePropertyAll(AppColors.primaryColor)),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        "Get Started",
        style: TextStyles.font16Whit600Weight,
      ),
    );
  }
}
