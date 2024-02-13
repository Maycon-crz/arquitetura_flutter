import 'package:arquitetura_exemplo_1/app/models/apiadvisor_model.dart';
import 'package:arquitetura_exemplo_1/app/repositories/apiadvisor_repository_interface.dart';
import 'package:flutter/material.dart';

class ApiadvisorViewModel {
  late final IApiadvisor repository;

  final apiAdvisorModel = ValueNotifier<ApiAdvisorModel?>(null);

  ApiadvisorViewModel(this.repository);

  fill() async {
    apiAdvisorModel.value = await repository.getTime();
  }
}
