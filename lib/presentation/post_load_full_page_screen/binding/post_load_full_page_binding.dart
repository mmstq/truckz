import '../controller/post_load_full_page_controller.dart';
import 'package:get/get.dart';

class PostLoadFullPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostLoadFullPageController());
  }
}
