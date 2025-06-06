import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamingfo_app/app/themes/app_theme.dart';
import 'package:gamingfo_app/firebase_options.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppTheme.appTheme,
    ),
  );
}
