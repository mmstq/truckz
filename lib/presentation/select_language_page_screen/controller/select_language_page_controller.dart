import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/select_language_page_screen/models/select_language_page_model.dart';
import 'package:flutter/material.dart';

class SelectLanguagePageController extends GetxController {
  TextEditingController languageController = TextEditingController();

  Rx<SelectLanguagePageModel> selectLanguagePageModelObj =
      SelectLanguagePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
  }
}
