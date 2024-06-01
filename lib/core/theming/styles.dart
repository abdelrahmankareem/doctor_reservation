import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.w700);
  static TextStyle font32Blue700Weight = TextStyle(
      fontSize: 32.sp,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700);
  static TextStyle font10Grey400Weight = TextStyle(
      fontSize: 10.sp, color: AppColors.grey, fontWeight: FontWeight.w400);
  static TextStyle font16Whit600Weight = TextStyle(
      fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600);
}
