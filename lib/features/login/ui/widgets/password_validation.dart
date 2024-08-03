import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasDigits;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasDigits,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HasValidatinRow("At Least 1 lowercase letter", hasLowerCase),
        SizedBox(
          height: 2.h,
        ),
        HasValidatinRow("At Least 1 number", hasNumber),
        SizedBox(
          height: 2.h,
        ),
        HasValidatinRow("At Least 1 uppercase letter", hasUpperCase),
        SizedBox(
          height: 2.h,
        ),
        HasValidatinRow("At Least 1 digit", hasDigits),
        SizedBox(
          height: 2.h,
        ),
        HasValidatinRow("At Least has 8 characters long ", hasMinLength),
      ],
    );
  }

  Widget HasValidatinRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.grey,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
            style: TextStyles.font13DarkBlue500Weight.copyWith(
                decoration: hasValidated ? TextDecoration.lineThrough : null,
                decorationColor: Colors.green,
                decorationThickness: 2,
                color: hasValidated ? AppColors.grey : AppColors.darkBlue),
            text),
      ],
    );
  }
}
