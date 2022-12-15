import '../controller/menu_page_controller.dart';
import 'package:get/get.dart';

class MenuPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuPageController());
  }
}
