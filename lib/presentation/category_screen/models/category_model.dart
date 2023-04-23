import 'package:get/get.dart';
import 'list_item_model.dart';
import 'listshare_item_model.dart';

class CategoryModel {
  RxList<ListItemModel> listItemList =
      RxList.generate(3, (index) => ListItemModel());

  RxList<ListshareItemModel> listshareItemList =
      RxList.generate(3, (index) => ListshareItemModel());
}
