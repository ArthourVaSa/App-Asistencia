// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:asistencia/app/modules/home/home_controller.dart';
import 'package:asistencia/app/routes/app_page.dart';
import 'package:asistencia/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController _ = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asistencia'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(_.listaClases[index]),
                  onTap: () {
                    Get.toNamed(Routes.LLENADO,
                        arguments: _.listaClases[index]);
                  },
                  subtitle: Text('Clase de ${_.listaClases[index]}'),
                );
              }),
              itemCount: _.listaClases.length,
            )
          ],
        ),
      ),
    );
  }
}
