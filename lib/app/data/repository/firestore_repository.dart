import 'package:asistencia/app/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/clases.dart';

class FirestoreRepository {
  final FirebaseFirestore firebaseFirestore = Get.find<FirebaseFirestore>();

  Future<void> addClases(Clases clases, String clase) {
    return firebaseFirestore
        .collection(Constants.FIREBASE_COLECTION)
        .doc(clase)
        .collection(clase)
        .add(clases.toJson());
  }
}
