import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:project1/constants/endpoints.dart';
import 'package:project1/model/get_model.dart';
import 'package:project1/services/services.dart';

class InviteController extends GetxController {
  RxBool isSelected = false.obs;
  List<String> types = [
    'Admin',
    'Approver',
    'Preparer',
    'Viewer',
    'Employee',
  ];
  RxList<String> selectedItems = ['Admin'].obs;
  TextEditingController emailcontroller = TextEditingController();
  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  Future<void> inviteMember() async {
    AddResponse? response = await Service.addUser(Endpoints.token,
        emailcontroller.text.trim(), (types.indexOf(selectedItems[0]) + 1));

    Fluttertoast.showToast(
      msg: response!.message.toString(),
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
