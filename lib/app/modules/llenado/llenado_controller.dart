import 'package:asistencia/app/data/model/clases.dart';
import 'package:asistencia/app/data/repository/firestore_repository.dart';
import 'package:get/get.dart';

class LlenadoController extends GetxController {
  final FirestoreRepository firestoreRepository =
      Get.find<FirestoreRepository>();

  Clases newClase = Clases(
      id: 'Adolescentes',
      asistencia: '20',
      biblias: '18',
      fecha: '22/12/2022',
      ofrendas: '22.00',
      visitas: '1');

  @override
  void onInit() {
    // TODO: implement onInit
    firestoreRepository.addClases(newClase, Get.arguments);

    super.onInit();
  }
}
