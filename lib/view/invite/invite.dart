import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constants/colors.dart';
import 'package:project1/constants/textstyles.dart';
import 'package:project1/controller/invite_controller.dart';
import 'package:project1/view/invite/widgets/bottom_sheet.dart';
import 'package:project1/view/invite/widgets/continue_button.dart';

class InviteScreen extends GetView<InviteController> {
  InviteScreen({super.key});
  final InviteController inviteController = Get.put(InviteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsObj.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              const SizedBox(height: 10),
              Text(
                'Invite',
                style: txtstlObj.headingStyle,
              ),
              const SizedBox(height: 20),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorsObj.kGryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Form(
                    key: controller.emailFormKey,
                    child: TextFormField(
                      controller: controller.emailcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        label: Text('Business email'),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorsObj.kGryColor,
                ),
                child: Obx(
                  () => ListTile(
                    onTap: () {
                      Get.bottomSheet(
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        const CustomBottomSheetWidget(),
                      );
                    },
                    leading: Text(controller.selectedItems[0]),
                    trailing: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: colorsObj.kBlueColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ContinueButtonWidget(),
    );
  }
}
