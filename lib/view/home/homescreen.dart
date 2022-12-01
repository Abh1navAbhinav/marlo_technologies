import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/constants/colors.dart';
import 'package:project1/constants/textstyles.dart';
import 'package:project1/controller/home_controller.dart';
import 'package:project1/view/home/widgets/all_people_list_tile.dart';
import 'package:project1/view/home/widgets/invited_people_list_tile.dart';
import 'package:project1/view/home/widgets/see_all_widget.dart';
import 'package:project1/view/invite/invite.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({super.key});
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsObj.scaffoldColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsObj.scaffoldColor,
        title: Text(
          'Teams',
          style: txtstlObj.headingStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          SeeAllWidget(),
          AllPeopleListTileWidget(),
          SeeAllWidget(),
          InvitedPeopleListTileWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => InviteScreen());
        },
        backgroundColor: colorsObj.kBlueColor,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
