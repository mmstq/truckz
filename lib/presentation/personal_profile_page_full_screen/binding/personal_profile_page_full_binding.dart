import '../controller/personal_profile_page_full_controller.dart';
import 'package:get/get.dart';

class PersonalProfilePageFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalProfilePageFullController());
  }
}
