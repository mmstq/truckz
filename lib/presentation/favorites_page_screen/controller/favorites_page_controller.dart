import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/favorites_page_screen/models/favorites_page_model.dart';

class FavoritesPageController extends GetxController {
  Rx<FavoritesPageModel> favoritesPageModelObj = FavoritesPageModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    favoritesPageModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    favoritesPageModelObj.value.dropdownItemList.refresh();
  }
}
