import 'package:doctor/core/routing/app_router.dart';
import 'package:doctor/doc_doc.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() {
  getItSetup();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}


  // This widget is the root of your application.


