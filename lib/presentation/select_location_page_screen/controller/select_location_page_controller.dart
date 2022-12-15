import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/select_location_page_screen/models/select_location_page_model.dart';
import 'package:flutter/material.dart';

class SelectLocationPageController extends GetxController {
  TextEditingController locationFieldController = TextEditingController();

  Rx<SelectLocationPageModel> selectLocationPageModelObj =
      SelectLocationPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    locationFieldController.dispose();
  }
}
