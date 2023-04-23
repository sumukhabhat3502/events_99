import 'package:get/get.dart';
import 'filter_selected_item_model.dart';

class FilterSelectedModel {
  RxList<FilterSelectedItemModel> filterSelectedItemList =
      RxList.generate(3, (index) => FilterSelectedItemModel());
}
