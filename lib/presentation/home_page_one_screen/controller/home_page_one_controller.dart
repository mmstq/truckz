import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/home_page_one_screen/models/home_page_one_model.dart';
import 'package:flutter/material.dart';

class HomePageOneController extends GetxController {
  TextEditingController floatingButtonController = TextEditingController();

  Rx<HomePageOneModel> homePageOneModelObj = HomePageOneModel().obs;

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
