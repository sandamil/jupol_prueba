import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jupol_prueba/app/modules/Actualidad/controllers/actualidad_controller.dart';
import 'package:jupol_prueba/app/modules/Actualidad/views/actualidad_view.dart';
import 'package:jupol_prueba/app/modules/Calendario/controllers/calendario_controller.dart';
import 'package:jupol_prueba/app/modules/Calendario/views/calendario_view.dart';
import 'package:jupol_prueba/app/modules/Servicios/views/servicios_view.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Get.put(CalendarioController());
    Get.put(ActualidadController());

  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  final _navBarIndex = 0.obs;

  set navBarIndex(value) => this._navBarIndex.value = value;
  get navBarIndex => this._navBarIndex.value;

  void onItemTapped(int index) {
    this.navBarIndex = index;
  }
}
