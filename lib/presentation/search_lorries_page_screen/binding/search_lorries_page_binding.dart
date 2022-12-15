import '../controller/search_lorries_page_controller.dart';
import 'package:get/get.dart';

class SearchLorriesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchLorriesPageController());
  }
}
