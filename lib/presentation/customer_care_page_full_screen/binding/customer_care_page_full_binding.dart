import '../controller/customer_care_page_full_controller.dart';
import 'package:get/get.dart';

class CustomerCarePageFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomerCarePageFullController());
  }
}
