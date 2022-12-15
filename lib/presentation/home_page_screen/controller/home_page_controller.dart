import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/home_page_screen/models/home_page_model.dart';
import 'package:flutter/material.dart';

class HomePageController extends GetxController {
  TextEditingController floatingButtonController = TextEditingController();

  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    floatingButtonController.dispose();
  }
}
