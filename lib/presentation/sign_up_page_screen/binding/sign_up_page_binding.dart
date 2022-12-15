import '../controller/sign_up_page_controller.dart';
import 'package:get/get.dart';

class SignUpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPageController());
  }
}
