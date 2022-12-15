import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/menu_page_screen/models/menu_page_model.dart';

class MenuPageController extends GetxController {
  Rx<MenuPageModel> menuPageModelObj = MenuPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
