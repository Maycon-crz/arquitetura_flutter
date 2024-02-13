import 'package:arquitetura_exemplo_1/app/pages/home/components/custom_switch_widget.dart';
import 'package:arquitetura_exemplo_1/app/pages/home/home_controller.dart';
import 'package:arquitetura_exemplo_1/app/repositories/apiadvisor_repository.dart';
import 'package:arquitetura_exemplo_1/app/services/client_http_service.dart';
import 'package:arquitetura_exemplo_1/app/viewmodels/apiadvisor_viewmodel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(
    viewModel: ApiadvisorViewModel(
      ApiadvisorRepository(
        client: ClientHttpService(),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.account_circle),
        onPressed: () {
          controller.getTime();
        },
      ),
      body: Center(
        child: Column(
          children: [
            const CustomSwitchWidget(),
            ValueListenableBuilder(
                valueListenable: controller.time,
                builder: (context, model, child) {
                  if (model?.text == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Text(model!.text!);
                }),
          ],
        ),
      ),
    );
  }
}
