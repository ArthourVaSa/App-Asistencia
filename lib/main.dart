import 'package:asistencia/app/modules/login/login_binding.dart';
import 'package:asistencia/app/modules/login/login_page.dart';
import 'package:asistencia/app/routes/app_page.dart';
import 'package:asistencia/app/routes/app_routes.dart';
import 'package:asistencia/app/utils/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DependencyInjection.init();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN,
    theme: ThemeData(primaryColor: Colors.green),
    defaultTransition: Transition.fade,
    initialBinding: LoginBinding(),
    getPages: AppPages.pages,
    home: const LoginPage(),
  ));
}
