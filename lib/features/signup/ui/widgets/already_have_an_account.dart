import 'package:doctor/core/helpers/navigation.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/routing/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font14DarkBlue500Weight,
          ),
          TextSpan(
            text: ' Login',
            style: TextStyles.font12Blue400Weight,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
