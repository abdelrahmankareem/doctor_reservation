import 'package:doctor/core/helpers/navigation.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountRichText extends StatelessWidget {
  const DontHaveAccountRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font10Grey400Weight,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font12Blue400Weight,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
