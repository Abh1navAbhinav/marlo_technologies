import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/view/demo_screens.dart/screen1.dart';
import 'package:project1/view/demo_screens.dart/screen2.dart';
import 'package:project1/view/demo_screens.dart/screen3.dart';
import 'package:project1/view/demo_screens.dart/screen4.dart';
import 'package:project1/view/home/homescreen.dart';

class BottomController extends GetxController {
  // final homecontrller = Get.put(HomeController());
  final pages = [
    const Screen1(),
    const Screen2(),
    HomeScreen(),
    const Screen3(),
    const Screen4(),
  ];
  List<IconData> bottomIcons = [
    Icons.home,
    Icons.attach_money_sharp,
    Icons.file_copy,
    Icons.people,
    Icons.chat,
  ];
  List<String> bottomLabels = [
    'Home',
    'Loans',
    'Contracts',
    'Teams',
    'Chat',
  ];
  RxInt selectedPageIndex = 0.obs;
}
