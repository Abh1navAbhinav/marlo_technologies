import 'package:get/get.dart';

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
}
