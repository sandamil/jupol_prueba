import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jupol_prueba/app/modules/Actualidad/views/actualidad_view.dart';
import 'package:jupol_prueba/app/modules/Calendario/views/calendario_view.dart';
import 'package:jupol_prueba/app/modules/Servicios/views/servicios_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(
        init: HomeController(),
        builder: (controller) => IndexedStack(
          index: controller.navBarIndex,
          children: const [
            ActualidadView(),
            CalendarioView(),
            ServiciosView(),
          ],
        ),
      ),
      bottomNavigationBar: GetX<HomeController>(
        builder: (controller) => BottomNavigationBar(
          currentIndex: controller.navBarIndex,
          onTap: (index) => controller.onItemTapped(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Actualidad',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_month),
              label: 'Calendario',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Servicios',
            ),
          ],
        ),
      ),
    );
  }
}



