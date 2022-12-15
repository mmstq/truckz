import '../controller/favorites_page_controller.dart';
import 'package:get/get.dart';

class FavoritesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoritesPageController());
  }
}
