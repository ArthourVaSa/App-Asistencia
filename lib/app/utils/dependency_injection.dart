import 'package:asistencia/app/data/repository/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    // ignore: deprecated_member_use
    // Get.put<Dio>(Dio(BaseOptions(baseUrl: Constants.FIREBASE_DATABASE_URL)));
    Get.put<FirebaseFirestore>(FirebaseFirestore.instance);

    //repository
    Get.put<FirestoreRepository>(FirestoreRepository());
  }
}
