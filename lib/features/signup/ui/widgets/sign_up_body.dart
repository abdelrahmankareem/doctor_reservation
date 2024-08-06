import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/widgets/custom_text_button.dart';
import 'package:doctor/features/login/ui/widgets/rich_text_conditins_terms.dart';
import 'package:doctor/features/signup/ui/widgets/already_have_an_account.dart';
import 'package:doctor/features/signup/ui/widgets/sign_up_bloc_listner.dart';
import 'package:doctor/features/signup/ui/widgets/sign_up_form.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../manager/cubit/sign_up_cubit.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: TextStyles.font24Blue700Weight,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                style: TextStyles.font14Grey400Weight,
              ),
              SizedBox(
                height: 36.h,
              ),
              Column(
                children: [
                  const SignupForm(),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppTextButton(
                    buttonText: "Create Account",
                    textStyle: TextStyles.font16Whit600Weight,
                    onPressed: () {
                      validateThenDoSignup(context);
                    },
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const ConditionsRichText(),
                  SizedBox(
                    height: 30.h,
                  ),
                  const AlreadyHaveAccountText(),
                  const SignupBlocListener(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
