import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/post_load_full_page_screen/models/post_load_full_page_model.dart';
import 'package:flutter/material.dart';

class PostLoadFullPageController extends GetxController {
  TextEditingController locationFieldController = TextEditingController();

  TextEditingController locationFieldOneController = TextEditingController();

  TextEditingController materialFieldController = TextEditingController();

  TextEditingController weightFieldController = TextEditingController();

  TextEditingController descriptionFieldController = TextEditingController();

  Rx<PostLoadFullPageModel> postLoadFullPageModelObj =
      PostLoadFullPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    locationFieldController.dispose();
    locationFieldOneController.dispose();
    materialFieldController.dispose();
    weightFieldController.dispose();
    descriptionFieldController.dispose();
  }
}
