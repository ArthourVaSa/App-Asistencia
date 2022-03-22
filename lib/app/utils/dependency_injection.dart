import 'package:asistencia/app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    // ignore: deprecated_member_use
    Get.put<Dio>(Dio(BaseOptions(baseUrl: Constants.FIREBASE_DATABASE_URL)));
  }
}
