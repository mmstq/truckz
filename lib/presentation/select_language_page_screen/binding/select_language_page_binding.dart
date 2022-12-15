import '../controller/select_language_page_controller.dart';
import 'package:get/get.dart';

class SelectLanguagePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectLanguagePageController());
  }
}
