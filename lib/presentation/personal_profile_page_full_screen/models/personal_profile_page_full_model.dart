import 'package:get/get.dart';
import 'listcontrast_item_model.dart';
import 'listratingstars1_item_model.dart';

class PersonalProfilePageFullModel {
  RxList<ListcontrastItemModel> listcontrastItemList =
      RxList.filled(2, ListcontrastItemModel());

  RxList<Listratingstars1ItemModel> listratingstars1ItemList =
      RxList.filled(2, Listratingstars1ItemModel());
}
