import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ConditionsRichText extends StatelessWidget {
  const ConditionsRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font14Grey400Weight,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14DarkBlue500Weight,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font14Grey400Weight.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font14Grey400Weight,
          ),
        ],
      ),
    );
  }
}
