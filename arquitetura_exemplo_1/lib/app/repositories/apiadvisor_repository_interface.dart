import 'package:arquitetura_exemplo_1/app/models/apiadvisor_model.dart';

abstract class IApiadvisor {
  Future<ApiAdvisorModel> getTime();
}
