import 'package:arquitetura_exemplo_1/app/interfaces/client_http_interface.dart';
import 'package:arquitetura_exemplo_1/app/models/apiadvisor_model.dart';
import 'package:arquitetura_exemplo_1/app/repositories/apiadvisor_repository_interface.dart';

class ApiadvisorRepository implements IApiadvisor {
  final IClientHttp client;

  ApiadvisorRepository({required this.client});

  @override
  Future<ApiAdvisorModel> getTime() async {
    var json = await client.get(
        'http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=28dd4f2907148ef668a07d075f36076f');
    ApiAdvisorModel model = ApiAdvisorModel.fromJson(json[0]);
    return model;
  }
}
