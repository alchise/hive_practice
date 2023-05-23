import 'package:get/get.dart';

import '../bindings/resultado_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/resultado_page/resultado_page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      transition: Transition.native,
      //binding: HomeBinding(), // ya esta inicia en main
    ),
    GetPage(
      name: Routes.RESULTADO,
      page: () => ResultadoPage(),
      transition: Transition.native,
      binding: ResultadoBinding(),
    ),
  ];
}
