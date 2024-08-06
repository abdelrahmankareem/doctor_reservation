import '../../../../core/theming/styles.dart';

import '../../manager/cubit/login_cubit.dart';
import 'email_and_password.dart';
import 'login_cubit_listner.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_button.dart';
import 'rich_text_conditins_terms.dart';
import 'rich_text_dont_have_account.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font24Blue700Weight,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14Grey400Weight,
              ),
              SizedBox(
                height: 36.h,
              ),
              Column(
                children: [
                  const EmailAndPassword(),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forget Password",
                        style: TextStyles.font12Blue400Weight,
                      )),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppTextButton(
                    buttonText: 'Login',
                    textStyle: TextStyles.font16Whit600Weight,
                    onPressed: () {
                      validateThenLogin(context);
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const ConditionsRichText(),
                  SizedBox(
                    height: 60.h,
                  ),
                  const DontHaveAccountRichText(),
                  const LoginCubitListener(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
