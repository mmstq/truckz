import '../controller/latest_lorries_page_controller.dart';
import 'package:get/get.dart';

class LatestLorriesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LatestLorriesPageController());
  }
}
