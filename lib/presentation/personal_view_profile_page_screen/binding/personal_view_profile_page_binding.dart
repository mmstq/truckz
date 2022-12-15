import '../controller/personal_view_profile_page_controller.dart';
import 'package:get/get.dart';

class PersonalViewProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalViewProfilePageController());
  }
}
