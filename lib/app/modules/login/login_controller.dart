// ignore_for_file: prefer_function_declarations_over_variables

import 'package:asistencia/app/data/preferences/usuario.dart';
import 'package:asistencia/app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController numeroCelular = TextEditingController();
  final TextEditingController smsController = TextEditingController();
  final _prefs = PreferenciasUsuario();

  String _verificationId = "";

  void verificarNumero() async {
    PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential phoneAuthCredential) async {
      await _auth.signInWithCredential(phoneAuthCredential);
      Get.dialog(
        AlertDialog(
          title: const Text("Verificado"),
          content: Text(
              "Phone number automatically verified and user signed in: ${_auth.currentUser?.uid}"),
        ),
      );
    };

    PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException authException) {
      Get.dialog(
        AlertDialog(
          title: const Text("Error"),
          content: Text(
              "Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}"),
        ),
      );
    };

    PhoneCodeSent codeSent = (verificationId, forceResendingToken) {
      Get.dialog(
        const AlertDialog(
          content: Text("Please check your phone for the verification code."),
        ),
      );
      _verificationId = verificationId;
    };

    PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout = (verificationId) {
      Get.dialog(
        AlertDialog(
          content: Text("verification code: " + verificationId),
        ),
      );
      _verificationId = verificationId;
    };

    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: numeroCelular.text,
          timeout: const Duration(seconds: 5),
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
    } catch (e) {
      Get.dialog(
        AlertDialog(
          content: Text("Failed to Verify Phone Number: ${e}"),
        ),
      );
    }
  }

  void signInWithPhoneNumber() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: smsController.text,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      Get.dialog(
        AlertDialog(
          content: Text("Successfully signed in UID: ${user?.uid}"),
        ),
      );

      _prefs.uidUser = user?.uid;

      Get.offNamed(Routes.HOME);
    } catch (e) {
      Get.dialog(
        AlertDialog(
          content: Text("Failed to sign in: " + e.toString()),
        ),
      );
    }
  }
}
