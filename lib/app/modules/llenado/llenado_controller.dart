import 'package:asistencia/app/data/model/clases.dart';
import 'package:asistencia/app/data/repository/firestore_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LlenadoController extends GetxController {
  final FirestoreRepository firestoreRepository =
      Get.find<FirestoreRepository>();

  final TextEditingController asistenciaController = TextEditingController();
  final TextEditingController bibliasController = TextEditingController();
  final TextEditingController ofrendasController = TextEditingController();
  final TextEditingController visitasController = TextEditingController();

  String asistencia = "";
  String biblias = "";
  String ofrendas = "";
  String visitas = "";
  String fecha = "";

  void guardarDatos() async {
    DateTime fechaConHora = DateTime.now();
    fecha = DateFormat('dd-MM-yyyy').format(fechaConHora);

    Clases newClase = Clases(
        tipoClase: Get.arguments,
        asistencia: asistencia,
        biblias: biblias,
        fecha: fecha,
        ofrendas: ofrendas,
        visitas: visitas);
    await firestoreRepository.addClases(newClase, Get.arguments).then((value) {
      print(value);
      asistenciaController.clear();
      bibliasController.clear();
      ofrendasController.clear();
      visitasController.clear();
    });
  }

  void traerDatos() async {
    await firestoreRepository.getClases(Get.arguments);
  }
}
