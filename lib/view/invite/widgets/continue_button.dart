import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:project1/constants/colors.dart';
import 'package:project1/controller/invite_controller.dart';

class ContinueButtonWidget extends GetView<InviteController> {
  const ContinueButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {
          if (controller.emailFormKey.currentState!.validate()) {
            controller.inviteMember();
            Get.back();
          } else {
            Fluttertoast.showToast(
              msg: 'All field is required',
              toastLength: Toast.LENGTH_LONG,
            );
          }
        },
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          shadowColor: colorsObj.kBlueColor,
          elevation: 5,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorsObj.kBlueColor,
            ),
            child: const Center(
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
