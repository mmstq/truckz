import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/home_page_screen/models/home_page_model.dart';
import 'package:flutter/material.dart';

class HomePageController extends GetxController {
  TextEditingController floatingButtonController = TextEditingController();

  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;
  RxBool isSearching = false.obs;

  @override
  void onReady() {
    super.onReady();
  }
  // void changeValue(){
  //   isSearching.value = !isSearching.value;
  //
  // }


  @override
  void onClose() {
    super.onClose();
    floatingButtonController.dispose();
  }
}
