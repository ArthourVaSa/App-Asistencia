import 'package:asistencia/app/modules/login/login_binding.dart';
import 'package:asistencia/app/modules/login/login_page.dart';
import 'package:asistencia/app/routes/app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
