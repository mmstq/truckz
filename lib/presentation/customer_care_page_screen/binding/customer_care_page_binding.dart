import '../controller/customer_care_page_controller.dart';
import 'package:get/get.dart';

class CustomerCarePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomerCarePageController());
  }
}
