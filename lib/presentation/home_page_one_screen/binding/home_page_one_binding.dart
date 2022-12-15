import '../controller/home_page_one_controller.dart';
import 'package:get/get.dart';

class HomePageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageOneController());
  }
}
