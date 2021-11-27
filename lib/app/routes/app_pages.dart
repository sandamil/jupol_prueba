import 'package:get/get.dart';

import 'package:jupol_prueba/app/modules/Actualidad/bindings/actualidad_binding.dart';
import 'package:jupol_prueba/app/modules/Actualidad/views/actualidad_view.dart';
import 'package:jupol_prueba/app/modules/Calendario/bindings/calendario_binding.dart';
import 'package:jupol_prueba/app/modules/Calendario/views/calendario_view.dart';
import 'package:jupol_prueba/app/modules/Servicios/bindings/servicios_binding.dart';
import 'package:jupol_prueba/app/modules/Servicios/views/servicios_view.dart';
import 'package:jupol_prueba/app/modules/home/bindings/home_binding.dart';
import 'package:jupol_prueba/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ACTUALIDAD,
      page: () => ActualidadView(),
      binding: ActualidadBinding(),
    ),
    GetPage(
      name: _Paths.CALENDARIO,
      page: () => CalendarioView(),
      binding: CalendarioBinding(),
    ),
    GetPage(
      name: _Paths.SERVICIOS,
      page: () => ServiciosView(),
      binding: ServiciosBinding(),
    ),
  ];
}
