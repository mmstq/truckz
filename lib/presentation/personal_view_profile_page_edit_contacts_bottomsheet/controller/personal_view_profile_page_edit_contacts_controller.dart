import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/personal_view_profile_page_edit_contacts_bottomsheet/models/personal_view_profile_page_edit_contacts_model.dart';
import 'package:flutter/material.dart';

class PersonalViewProfilePageEditContactsController extends GetxController {
  TextEditingController groupTwoController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController websiteFieldController = TextEditingController();

  Rx<PersonalViewProfilePageEditContactsModel>
      personalViewProfilePageEditContactsModelObj =
      PersonalViewProfilePageEditContactsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwoController.dispose();
    emailController.dispose();
    websiteFieldController.dispose();
  }
}
