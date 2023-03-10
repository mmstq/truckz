import 'package:get/get.dart';
import 'package:truck_booking/data/models/selectionPopupModel/selection_popup_model.dart';
import 'favorites_page_item_model.dart';

class FavoritesPageModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Newest",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Oldest",
    ),
  ].obs;

  RxList<FavoritesPageItemModel> favoritesPageItemList =
      RxList.filled(4, FavoritesPageItemModel());
}
