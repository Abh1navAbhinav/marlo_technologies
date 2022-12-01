import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constants/textstyles.dart';
import 'package:project1/controller/home_controller.dart';

class InvitedPeopleListTileWidget extends GetView<HomeController> {
  const InvitedPeopleListTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: controller.avatarColors[index],
                ),
                child: const Center(
                  child: Text(
                    'KS',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              title: Text(
                'Krishna Soundhar',
                style: txtstlObj.nameStyle,
              ),
              subtitle: const Text('Admin'),
            ),
          ),
        ),
      ),
    );
  }
}