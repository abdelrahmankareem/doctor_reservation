import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../manager/cubit/login_cubit.dart';
import 'password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasDigits = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListner();
  }

  void setupPasswordControllerListner() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasDigits = AppRegex.hasDegits(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(children: [
        DocTextFormField(
          hintText: "Email",
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return "please enter a valid email";
            }
          },
          controller: context.read<LoginCubit>().emailController,
        ),
        SizedBox(
          height: 18.h,
        ),
        DocTextFormField(
          controller: context.read<LoginCubit>().passwordController,
          hintText: "Enter your password",
          isObscureText: isObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(
                () {
                  isObscureText = !isObscureText;
                },
              );
            },
            child:
                Icon(isObscureText ? Icons.visibility_off : Icons.visibility),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter a valid password";
            }
          },
        ),
        SizedBox(
          height: 24.h,
        ),
        PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasDigits: hasDigits,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength)
      ]),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();

    super.dispose();
  }
}
