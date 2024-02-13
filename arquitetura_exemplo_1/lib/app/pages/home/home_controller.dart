import 'package:arquitetura_exemplo_1/app/models/apiadvisor_model.dart';
import 'package:arquitetura_exemplo_1/app/viewmodels/apiadvisor_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeController {
  final ApiadvisorViewModel viewModel;

  HomeController({required this.viewModel});

  ValueNotifier<ApiAdvisorModel?> get time => viewModel.apiAdvisorModel;

  getTime() {
    viewModel.fill();
  }
}
