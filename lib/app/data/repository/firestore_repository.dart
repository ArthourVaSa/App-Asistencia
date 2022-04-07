import 'package:asistencia/app/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/clases.dart';

class FirestoreRepository {
  final FirebaseFirestore firebaseFirestore = Get.find<FirebaseFirestore>();

  Future<DocumentReference> addClases(Clases clases, String clase) {
    return firebaseFirestore
        .collection(Constants.FIREBASE_COLECTION)
        .add(clases.toJson());
  }

  Future<void> getClases(String clase) async {
    var data = firebaseFirestore
        .collection(Constants.FIREBASE_COLECTION)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        print(element.data());
      });
    });
  }
}
