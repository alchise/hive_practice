// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({super.key});

  // variable que maneja el controlador HomeController
  @override
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              controller.color1 = 11;
              controller.color2 = 22;
              controller.color3 = 33;
              controller.color4 = 44;
              controller.color5 = 55;
              controller.color6 = 66;
              controller.color7 = 77;
              controller.color8 = 88;
              controller.salvarColores();
              controller.recuperarColores();
              print(controller.color1);
              print(controller.color2);
              print(controller.color3);
              print(controller.color4);
              print(controller.color5);
              print(controller.color6);
              print(controller.color7);
              print(controller.color8);
              controller.irAResultado();
            },
            child: const Text('Ir a ResultadoPage'),
          ),
        ),
      ),
    );
  }
}
