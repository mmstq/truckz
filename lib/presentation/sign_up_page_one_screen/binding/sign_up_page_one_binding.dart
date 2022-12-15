import '../controller/sign_up_page_one_controller.dart';
import 'package:get/get.dart';

class SignUpPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPageOneController());
  }
}
