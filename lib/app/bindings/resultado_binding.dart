
import 'package:get/get.dart';
import '../controllers/resultado_controller.dart';


class ResultadoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultadoController>(() => ResultadoController());
  }
}