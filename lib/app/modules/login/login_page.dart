import 'package:asistencia/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Verificación'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: [
                  const Text(
                    "Verifica tu número de celular",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: _.numeroCelular,
                    decoration:
                        const InputDecoration(labelText: "Ingrese su número"),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _.verificarNumero();
                    },
                    child: const Text("Verificar Número"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Verifica tu número de celular",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: _.smsController,
                    decoration:
                        const InputDecoration(labelText: "Ingrese su Código"),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _.signInWithPhoneNumber();
                    },
                    child: const Text("Sign In"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
