import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constants/colors.dart';
import 'package:project1/constants/textstyles.dart';
import 'package:project1/controller/invite_controller.dart';

class CustomBottomSheetWidget extends GetView<InviteController> {
  const CustomBottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorsObj.scaffoldColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.5),
                color: colorsObj.kLightBlueColor,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 15,
                    bottom: 20,
                  ),
                  child: Text(
                    'Team roles',
                    style: txtstlObj.nameStyle,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    itemCount: controller.types.length,
                    itemBuilder: (context, index) => Obx(
                      () => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.selectedItems
                                    .contains(controller.types[index])
                                ? colorsObj.kLightBlueColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            onTap: () {
                              controller.selectedItems.clear();
                              controller.selectedItems.add(
                                controller.types[index],
                              );
                            },
                            textColor: controller.selectedItems
                                    .contains(controller.types[index])
                                ? colorsObj.kBlueColor
                                : Colors.grey,
                            leading: Text(
                              controller.types[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
