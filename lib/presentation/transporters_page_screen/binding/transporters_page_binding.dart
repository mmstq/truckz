import '../controller/transporters_page_controller.dart';
import 'package:get/get.dart';

class TransportersPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransportersPageController());
  }
}
