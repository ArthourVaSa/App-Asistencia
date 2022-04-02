import 'package:asistencia/app/modules/llenado/llenado_controller.dart';
import 'package:get/get.dart';

class LlenadoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LlenadoController>(() => LlenadoController());
  }
}
