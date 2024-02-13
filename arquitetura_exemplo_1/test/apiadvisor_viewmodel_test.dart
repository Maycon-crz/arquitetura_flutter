import 'package:arquitetura_exemplo_1/app/repositories/apiadvisor_repository.dart';
import 'package:arquitetura_exemplo_1/app/services/client_http_service.dart';
import 'package:arquitetura_exemplo_1/app/viewmodels/apiadvisor_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('ApiAdvisorViewModel error', () async {
    final viewModel = ApiadvisorViewModel(ApiadvisorRepository(
      client: ClientHttpService(),
    ));

    await viewModel.fill();
    expect(viewModel.apiAdvisorModel, null);
  });
}
