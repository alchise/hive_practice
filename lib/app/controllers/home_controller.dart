// ignore_for_file: unnecessary_overrides, avoid_print
import 'package:get/get.dart';
import 'package:hive_practice/app/routes/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  int? color1 = 0;
  int? color2 = 0;
  int? color3 = 0;
  int? color4 = 0;
  int? color5 = 0;
  int? color6 = 0;
  int? color7 = 0;
  int? color8 = 0;

  void salvarColores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('color1', color1!);
    prefs.setInt('color2', color2!);
    prefs.setInt('color3', color3!);
    prefs.setInt('color4', color4!);
    prefs.setInt('color5', color5!);
    prefs.setInt('color6', color6!);
    prefs.setInt('color7', color7!);
    prefs.setInt('color8', color8!);
  }

  recuperarColores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    color1 = prefs.getInt('color1');
    color2 = prefs.getInt('color2');
    color3 = prefs.getInt('color3');
    color4 = prefs.getInt('color4');
    color5 = prefs.getInt('color5');
    color6 = prefs.getInt('color6');
    color7 = prefs.getInt('color7');
    color8 = prefs.getInt('color8');
  }

  @override
  void onInit() async {
    recuperarColores();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  irAResultado() {
    Get.toNamed(Routes.RESULTADO);
  }
}
