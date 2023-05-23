// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/resultado_controller.dart';

class ResultadoPage extends GetView<ResultadoController> {
  ResultadoPage({super.key});
  @override
  final controller = Get.put(ResultadoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              controller.recuperarColores();
              print(controller.color1);
              print(controller.color2);
              print(controller.color3);
              print(controller.color4);
              print(controller.color5);
              print(controller.color6);
              print(controller.color7);
              print(controller.color8);
            },
            child: const Text('Imprimir Variables pasadas'),
          ),
        ),
      ),
    );
  }
}
