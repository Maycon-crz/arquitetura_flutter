import 'package:flutter/foundation.dart';

class AppController {
  //Singleton = instancia unica
  static final AppController instance = AppController._(); //
  AppController._(); //Construtor Privado
  //---------

  final themeSwitch = ValueNotifier<bool>(false);

  changeTheme() {
    themeSwitch.value = !themeSwitch.value;
  }
}
