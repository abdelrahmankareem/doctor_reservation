import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'doc_doc.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  getItSetup();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}


  // This widget is the root of your application.


