import '../controller/my_loads_page_controller.dart';
import 'package:get/get.dart';

class MyLoadsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyLoadsPageController());
  }
}
