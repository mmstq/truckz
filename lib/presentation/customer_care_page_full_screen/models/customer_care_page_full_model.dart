import 'package:get/get.dart';
import 'listtext_item_model.dart';
import 'listtext_two_item_model.dart';

class CustomerCarePageFullModel {
  RxList<ListtextItemModel> listtextItemList =
      RxList.filled(2, ListtextItemModel());

  RxList<ListtextTwoItemModel> listtextTwoItemList =
      RxList.filled(4, ListtextTwoItemModel());
}
