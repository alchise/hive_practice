import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_practice/app/bindings/home_binding.dart';
import 'package:hive_practice/app/ui/theme/dark_theme.dart';
import 'app/routes/pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      theme: appThemeData,
      defaultTransition: Transition.fade, // TODO: Probando TODO
      initialBinding: HomeBinding(),
      getPages: AppPages.pages, // FIXME: Probando FIXME
    ),
  );
}
