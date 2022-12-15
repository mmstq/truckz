import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/sign_up_page_screen/models/sign_up_page_model.dart';
import 'package:flutter/material.dart';

class SignUpPageController extends GetxController {
  TextEditingController nameFieldController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  Rx<SignUpPageModel> signUpPageModelObj = SignUpPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameFieldController.dispose();
    mobileNoController.dispose();
  }
}
