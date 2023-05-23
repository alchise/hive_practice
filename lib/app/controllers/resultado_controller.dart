import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultadoController extends GetxController {
  int? color1 = 0;
  int? color2 = 0;
  int? color3 = 0;
  int? color4 = 0;
  int? color5 = 0;
  int? color6 = 0;
  int? color7 = 0;
  int? color8 = 0;

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
}
