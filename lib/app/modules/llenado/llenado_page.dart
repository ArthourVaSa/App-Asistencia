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
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: _.asistenciaController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => _.asistencia = value,
                  decoration: const InputDecoration(
                    labelText: 'Núermo de Asistencia',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _.bibliasController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => _.biblias = value,
                  decoration: const InputDecoration(
                    labelText: 'Número de Biblias',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _.ofrendasController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => _.ofrendas = value,
                  decoration: const InputDecoration(
                    labelText: 'Número de Ofrendas',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _.visitasController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => _.visitas = value,
                  decoration: const InputDecoration(
                    labelText: 'Número de Visitas',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _.traerDatos,
                  child: const Text('Guardar'),
                )
              ],
            ),
          )),
    );
  }
}
