import 'package:arquitetura_exemplo_1/app/interfaces/local_storage_interface.dart';
import 'package:arquitetura_exemplo_1/app/models/app_config_model.dart';

class ChangeThemeViewmodel {
  final ILocalStorage storage;
  final AppConfigModel config = AppConfigModel();

  ChangeThemeViewmodel({required this.storage});

  Future init() async {
    await storage.get('isDark').then((value) {
      if (value != null) config.themeSwitch.value = value;
    });
  }

  changeTheme(value) {
    config.themeSwitch.value = !config.themeSwitch.value;
    storage.put('isDark', value);
  }
}
