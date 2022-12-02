import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constants/textstyles.dart';
import 'package:project1/controller/home_controller.dart';

class AllPeopleListTileWidget extends GetView<HomeController> {
  const AllPeopleListTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          final data = controller.allList[0].data1.contacts[index];
          return Padding(
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
                  child: Center(
                    child: Text(
                      "${data.firstname!.substring(0, 1).toUpperCase()} ${data.lastname!.substring(0, 1).toUpperCase()}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "${data.firstname} ${data.lastname}",
                  style: txtstlObj.nameStyle,
                ),
                subtitle: Text(data.isactive ? 'Active' : 'Inactive'),
                trailing: Text(data.roleName),
              ),
            ),
          );
        },
      ),
    );
  }
}
