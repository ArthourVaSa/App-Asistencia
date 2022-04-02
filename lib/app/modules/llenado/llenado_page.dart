import 'package:asistencia/app/modules/llenado/llenado_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LlenadoPage extends StatelessWidget {
  const LlenadoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LlenadoController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(Get.arguments),
        ),
        body: Center(
          child: Text(Get.arguments),
        ),
      ),
    );
  }
}
