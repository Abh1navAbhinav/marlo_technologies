import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constants/colors.dart';
import 'package:project1/controller/bottom_controller.dart';

class BottomNavigationScreen extends GetView<BottomController> {
  BottomNavigationScreen({super.key});
  final bottomController = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.pages[controller.selectedPageIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          elevation: 0,
          selectedItemColor: colorsObj.kBlueColor,
          backgroundColor: Colors.white,
          currentIndex: controller.selectedPageIndex.value,
          unselectedItemColor: Colors.grey,
          onTap: (value) async {
            controller.selectedPageIndex.value = value;
          },
          items: List.generate(
            controller.bottomLabels.length,
            (index) => BottomNavigationBarItem(
              icon: Icon(
                controller.bottomIcons[index],
              ),
              label: controller.bottomLabels[index],
            ),
          ),
        ),
      ),
    );
  }
}
