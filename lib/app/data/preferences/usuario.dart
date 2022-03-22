// ignore_for_file: unnecessary_this

import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instance = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instance;
  }

  PreferenciasUsuario._internal();

  SharedPreferences? _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  String get uidUser {
    return _prefs?.getString('uid') ?? '';
  }

  set uidUser(String? value) {
    _prefs?.setString('uid', value!);
  }
}
