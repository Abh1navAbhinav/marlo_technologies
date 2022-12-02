import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:project1/constants/endpoints.dart';
import 'package:project1/model/get_model.dart';
import 'package:project1/services/services.dart';

class HomeController extends GetxController {
  List<MaterialColor> avatarColors = [
    Colors.blue,
    Colors.amber,
    Colors.blueGrey,
    Colors.brown,
    Colors.cyan,
    Colors.green,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.purple,
    Colors.teal,
    Colors.blue,
    Colors.amber,
    Colors.blueGrey,
    Colors.brown,
    Colors.cyan,
    Colors.green,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.purple,
    Colors.teal
  ];

  List<UserResponse> allList = [];

  Future<void> fetchDetails() async {
    UserResponse? response = await Service.getData(Endpoints.token);
    if (response!.errorFlag == "SUCCESS") {
      allList.add(response);
      log("response in fetch details :---------- ${allList[0].data1.contacts}");
    } else {
      Fluttertoast.showToast(
        msg: response.message.toString(),
        toastLength: Toast.LENGTH_LONG,
      );
    }
  }

  @override
  void onInit() {
    fetchDetails();
    super.onInit();
  }
}
