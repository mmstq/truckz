import '../controller/lorry_detail_public_page_controller.dart';
import 'package:get/get.dart';

class LorryDetailPublicPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LorryDetailPublicPageController());
  }
}
