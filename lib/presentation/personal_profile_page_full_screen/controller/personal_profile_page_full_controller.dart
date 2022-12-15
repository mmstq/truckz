import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/personal_profile_page_full_screen/models/personal_profile_page_full_model.dart';

class PersonalProfilePageFullController extends GetxController {
  Rx<PersonalProfilePageFullModel> personalProfilePageFullModelObj =
      PersonalProfilePageFullModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
