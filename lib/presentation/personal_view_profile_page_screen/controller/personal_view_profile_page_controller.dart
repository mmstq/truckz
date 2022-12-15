import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/personal_view_profile_page_screen/models/personal_view_profile_page_model.dart';

class PersonalViewProfilePageController extends GetxController {
  Rx<PersonalViewProfilePageModel> personalViewProfilePageModelObj =
      PersonalViewProfilePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
