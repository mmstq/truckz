import '../controller/select_location_page_controller.dart';
import 'package:get/get.dart';

class SelectLocationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectLocationPageController());
  }
}
