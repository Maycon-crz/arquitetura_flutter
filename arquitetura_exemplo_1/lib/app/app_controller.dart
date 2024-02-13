import 'package:arquitetura_exemplo_1/app/services/shared_local_storage_service.dart';
import 'package:arquitetura_exemplo_1/app/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/material.dart';

class AppController {
  //Singleton = instancia unica
  static final AppController instance = AppController._(); //
  AppController._() {
    //Construtor Privado
    changeThemeViewmodel.init();
  }
  //---------

  final ChangeThemeViewmodel changeThemeViewmodel =
      ChangeThemeViewmodel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewmodel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewmodel.config.themeSwitch;
}
